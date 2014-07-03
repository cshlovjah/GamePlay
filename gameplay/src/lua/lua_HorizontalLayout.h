#ifndef LUA_HORIZONTALLAYOUT_H_
#define LUA_HORIZONTALLAYOUT_H_

namespace gameplay
{

// Lua bindings for HorizontalLayout.
int lua_HorizontalLayout__gc(lua_State* state);
int lua_HorizontalLayout_addRef(lua_State* state);
int lua_HorizontalLayout_getRefCount(lua_State* state);
int lua_HorizontalLayout_getRightToLeft(lua_State* state);
int lua_HorizontalLayout_getSpacing(lua_State* state);
int lua_HorizontalLayout_getType(lua_State* state);
int lua_HorizontalLayout_release(lua_State* state);
int lua_HorizontalLayout_setRightToLeft(lua_State* state);
int lua_HorizontalLayout_setSpacing(lua_State* state);

void luaRegister_HorizontalLayout();

}

#endif