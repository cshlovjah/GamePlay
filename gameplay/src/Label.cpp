#include "Base.h"
#include "Label.h"

namespace gameplay
{

Label::Label() : _text(""), _font(NULL)
    , _textColor( 0.0f, 0.0f, 0.0f, 0.0f )
{
}

Label::~Label()
{
}

Label* Label::create(const char* id, Theme::Style* style)
{
    Label* label = new Label();
    label->_id = id ? id : "";
    label->initialize("Label", style, NULL);
    return label;
}

Control* Label::create(Theme::Style* style, Properties* properties)
{
    Label* label = new Label();
	label->initialize("Label", style, properties);
    return label;
}

void Label::initialize(const char* typeName, Theme::Style* style, Properties* properties)
{
    Control::initialize(typeName, style, properties);

	if (properties)
	{
		const char* text = properties->getString("text");
		if (text)
		{
			_text.assign( text, text + strlen( text ) );
		}
	}
}

const char* Label::getTypeName() const
{
    return "Label";
}


void Label::addListener(Control::Listener* listener, int eventFlags)
{
    if ((eventFlags & Control::Listener::TEXT_CHANGED) == Control::Listener::TEXT_CHANGED)
    {
        GP_ERROR("TEXT_CHANGED event is not applicable to this control.");
    }
    if ((eventFlags & Control::Listener::VALUE_CHANGED) == Control::Listener::VALUE_CHANGED)
    {
        GP_ERROR("VALUE_CHANGED event is not applicable to this control.");
    }

    Control::addListener(listener, eventFlags);
}

void Label::setText(const char* text)
{
    if ((text == NULL && _text.length() > 0) || strcmp(text, _text.c_str()) != 0)
    {
        _text = text ? text : "";
        if (_autoSize != AUTO_SIZE_NONE)
        {
            // keep our bounds up-to-date even when control is hidden
            updateBounds();
            setDirty(DIRTY_BOUNDS);
        }
    }
}

const char* Label::getText()
{
    return _text.c_str();
}

void Label::update(float elapsedTime)
{
    Control::update(elapsedTime);

    // Update text opacity each frame since opacity is updated in Control::update.
    _textColor = getTextColor(getState());
    _textColor.w *= _opacity;
}

void Label::updateState(State state)
{
    Control::updateState(state);

    _font = getFont(state);
}

void Label::updateBounds()
{
    if (_autoSize != AUTO_SIZE_NONE && _font)
    {
        // Measure bounds based only on normal state so that bounds updates are not always required on state changes.
        // This is a trade-off for functionality vs performance, but changing the size of UI controls on hover/focus/etc
        // is a pretty bad practice so we'll prioritize performance here.
        if (_autoSize & AUTO_SIZE_WIDTH)
        {
            float w, h;
            _font->measureText(_text.c_str(), getFontSize(NORMAL), getTextDrawingFlags(NORMAL), &w, &h, getCharacterSpacing(NORMAL), getLineSpacing(NORMAL));
            setWidthInternal(ceilf(w + getBorder(NORMAL).left + getBorder(NORMAL).right + getPadding().left + getPadding().right));
            if (_autoSize & AUTO_SIZE_HEIGHT)
                setHeightInternal(ceilf(h + getBorder(NORMAL).top + getBorder(NORMAL).bottom + getPadding().top + getPadding().bottom));
        }
        else // _autoSize & AUTO_SIZE_HEIGHT
        {
            GP_ASSERT(_autoSize & AUTO_SIZE_HEIGHT);

            // recalculate height due to word wrapping
            float h = getFontSize(NORMAL);
            if (_textBounds.width > 0.0f)
            {
                gameplay::Rectangle clipBounds(_textBounds.width, FLT_MAX);
                gameplay::Rectangle out;
                _font->measureText(_text.c_str(), clipBounds, getFontSize(NORMAL), getTextDrawingFlags(NORMAL), &out, getTextAlignment(NORMAL), 
                    true, true, getCharacterSpacing(NORMAL), getLineSpacing(NORMAL));

                h = out.height;
            }

            setHeightInternal(ceilf(h + getBorder(NORMAL).top + getBorder(NORMAL).bottom + getPadding().top + getPadding().bottom));
        }
    }

    Control::updateBounds();
}

void Label::updateAbsoluteBounds(const Vector2& offset)
{
    Control::updateAbsoluteBounds(offset);

    float oldTextWidth = _textBounds.width;
    _textBounds.set(_viewportBounds.x, _viewportBounds.y, _viewportBounds.width, _viewportBounds.height);

    if ((_autoSize & AUTO_SIZE_HEIGHT) != 0 && (_autoSize & AUTO_SIZE_WIDTH) == 0 && oldTextWidth != _textBounds.width)
    {
        // text bounds have been changed and word wrapping is applied, need to recalculate control's height
        setDirty(DIRTY_BOUNDS);
    }
}

unsigned int Label::drawText(Form* form) const
{
    if (_viewportClipBounds.width <= 0 || _viewportClipBounds.height <= 0)
        return 0;

    // Draw the text.
    if (_text.size() > 0 && _font)
    {
        Control::State state = getState();
        float fontSize = getFontSize(state);

        SpriteBatch* batch = _font->getSpriteBatch(fontSize);
        startBatch(form, batch);
        _font->drawText(_text.c_str(), _textBounds, _textColor, fontSize, getTextAlignment(state), true, getTextDrawingFlags(state), _viewportClipBounds,
            getCharacterSpacing(state), getLineSpacing(state));
        finishBatch(form, batch);

        return 1;
    }

    return 0;
}

}
