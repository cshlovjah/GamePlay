GAMEPLAY_PATH := $(call my-dir)/../../src

# external-deps
PNG_PATH := ../../external-deps/png/lib/android/$(TARGET_ARCH_ABI)
ZLIB_PATH := ../../external-deps/zlib/lib/android/$(TARGET_ARCH_ABI)
LUA_PATH := ../../external-deps/lua/lib/android/$(TARGET_ARCH_ABI)
BULLET_PATH := ../../external-deps/bullet/lib/android/$(TARGET_ARCH_ABI)
OGG_PATH := ../../external-deps/ogg/lib/android/$(TARGET_ARCH_ABI)
VORBIS_PATH := ../../external-deps/vorbis/lib/android/$(TARGET_ARCH_ABI)
OPENAL_PATH := ../../external-deps/openal/lib/android/$(TARGET_ARCH_ABI)
LIBYAML_PATH := ../../external-deps/yaml/lib/android/$(TARGET_ARCH_ABI)

# libpng
LOCAL_PATH := $(PNG_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libpng 
LOCAL_SRC_FILES := libpng.a
include $(PREBUILT_STATIC_LIBRARY)

# libz
LOCAL_PATH := $(ZLIB_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libz
LOCAL_SRC_FILES := libz.a
include $(PREBUILT_STATIC_LIBRARY)

# liblua
LOCAL_PATH := $(LUA_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := liblua
LOCAL_SRC_FILES := liblua.a
include $(PREBUILT_STATIC_LIBRARY)

# libLinearMath
LOCAL_PATH := $(BULLET_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libLinearMath
LOCAL_SRC_FILES := libLinearMath.a
include $(PREBUILT_STATIC_LIBRARY)

# libBulletCollision
LOCAL_PATH := $(BULLET_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libBulletCollision
LOCAL_SRC_FILES := libBulletCollision.a
include $(PREBUILT_STATIC_LIBRARY)

# libBulletDynamics
LOCAL_PATH := $(BULLET_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libBulletDynamics
LOCAL_SRC_FILES := libBulletDynamics.a
include $(PREBUILT_STATIC_LIBRARY)

# libogg
LOCAL_PATH := $(OGG_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libogg
LOCAL_SRC_FILES := libogg.a
include $(PREBUILT_STATIC_LIBRARY)

# libvorbis
LOCAL_PATH := $(VORBIS_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libvorbis
LOCAL_SRC_FILES := libvorbis.a
include $(PREBUILT_STATIC_LIBRARY)

# libOpenAL
LOCAL_PATH := $(OPENAL_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libOpenAL
LOCAL_SRC_FILES := libOpenAL.a
include $(PREBUILT_STATIC_LIBRARY)

# libyaml
LOCAL_PATH := $(LIBYAML_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE    := libyaml
LOCAL_SRC_FILES := libyaml.a
include $(PREBUILT_STATIC_LIBRARY)

# libgameplay
include $(CLEAR_VARS)
LOCAL_PATH := $(GAMEPLAY_PATH)
LOCAL_MODULE    := libgameplay
LOCAL_SRC_FILES := \
    AbsoluteLayout.cpp \
    AIAgent.cpp \
    AIController.cpp \
    AIMessage.cpp \
    AIState.cpp \
    AIStateMachine.cpp \
    Animation.cpp \
    AnimationClip.cpp \
    AnimationController.cpp \
    AnimationTarget.cpp \
    AnimationValue.cpp \
    AudioBuffer.cpp \
    AudioController.cpp \
    AudioListener.cpp \
    AudioSource.cpp \
    BoundingBox.cpp \
    BoundingSphere.cpp \
    Bundle.cpp \
    Button.cpp \
    Camera.cpp \
    CheckBox.cpp \
    Container.cpp \
    Control.cpp \
    ControlFactory.cpp \
    Curve.cpp \
    DebugNew.cpp \
    DepthStencilTarget.cpp \
    Effect.cpp \
    FileSystem.cpp \
    FlowLayout.cpp \
    Font.cpp \
    Form.cpp \
    FrameBuffer.cpp \
    Frustum.cpp \
    Game.cpp \
    Gamepad.cpp \
    HeightField.cpp \
    HorizontalLayout.cpp \
    Image.cpp \
    ImageControl.cpp \
    Joint.cpp \
    JoystickControl.cpp \
    Label.cpp \
    Layout.cpp \
    Light.cpp \
    Logger.cpp \
    Material.cpp \
    MaterialParameter.cpp \
    MathUtil.cpp \
    Matrix.cpp \
    Matrix3.cpp \
    Mesh.cpp \
    MeshBatch.cpp \
    MeshPart.cpp \
    MeshSkin.cpp \
    Model.cpp \
    Node.cpp \
    Package.cpp \
    ParticleEmitter.cpp \
    Pass.cpp \
    PhysicsCharacter.cpp \
    PhysicsCollisionObject.cpp \
    PhysicsCollisionShape.cpp \
    PhysicsConstraint.cpp \
    PhysicsController.cpp \
    PhysicsFixedConstraint.cpp \
    PhysicsGenericConstraint.cpp \
    PhysicsGhostObject.cpp \
    PhysicsHingeConstraint.cpp \
    PhysicsRigidBody.cpp \
    PhysicsSocketConstraint.cpp \
    PhysicsSpringConstraint.cpp \
    PhysicsVehicle.cpp \
    PhysicsVehicleWheel.cpp \
    Plane.cpp \
    Platform.cpp \
    PlatformAndroid.cpp \
    ProgressBar.cpp \
    Properties.cpp \
    Quaternion.cpp \
    RadioButton.cpp \
    Ray.cpp \
    Rectangle.cpp \
    Ref.cpp \
    RenderState.cpp \
    RenderTarget.cpp \
    Scene.cpp \
    SceneLoader.cpp \
    ScreenDisplayer.cpp \
    ScriptController.cpp \
    ScriptTarget.cpp \
    Slider.cpp \
    SocialAchievement.cpp \
    SocialChallenge.cpp \
    SocialController.cpp \
    SocialPlayer.cpp \
    SocialScore.cpp \
    SocialSessionListener.cpp \
    SpriteBatch.cpp \
    Technique.cpp \
    Terrain.cpp \
    TerrainPatch.cpp \
    TextBox.cpp \
    Texture.cpp \
    Theme.cpp \
    ThemeStyle.cpp \
    Transform.cpp \
    Vector2.cpp \
    Vector3.cpp \
    Vector4.cpp \
    VertexAttributeBinding.cpp \
    VertexFormat.cpp \
    VerticalLayout.cpp \
    lua/lua_AbsoluteLayout.cpp \
    lua/lua_AIAgent.cpp \
    lua/lua_AIAgentListener.cpp \
    lua/lua_AIController.cpp \
    lua/lua_AIMessage.cpp \
    lua/lua_AIMessageParameterType.cpp \
    lua/lua_AIState.cpp \
    lua/lua_AIStateListener.cpp \
    lua/lua_AIStateMachine.cpp \
    lua/lua_all_bindings.cpp \
    lua/lua_Animation.cpp \
    lua/lua_AnimationClip.cpp \
    lua/lua_AnimationClipListener.cpp \
    lua/lua_AnimationClipListenerEventType.cpp \
    lua/lua_AnimationController.cpp \
    lua/lua_AnimationTarget.cpp \
    lua/lua_AnimationValue.cpp \
    lua/lua_AudioBuffer.cpp \
    lua/lua_AudioController.cpp \
    lua/lua_AudioListener.cpp \
    lua/lua_AudioSource.cpp \
    lua/lua_AudioSourceState.cpp \
    lua/lua_BoundingBox.cpp \
    lua/lua_BoundingSphere.cpp \
    lua/lua_Bundle.cpp \
    lua/lua_Button.cpp \
    lua/lua_Camera.cpp \
    lua/lua_CameraListener.cpp \
    lua/lua_CameraType.cpp \
    lua/lua_CheckBox.cpp \
    lua/lua_Container.cpp \
    lua/lua_ContainerDirection.cpp \
    lua/lua_ContainerScroll.cpp \
    lua/lua_Control.cpp \
    lua/lua_ControlAlignment.cpp \
    lua/lua_ControlAutoSize.cpp \
    lua/lua_ControlListener.cpp \
    lua/lua_ControlListenerEventType.cpp \
    lua/lua_ControlState.cpp \
    lua/lua_Curve.cpp \
    lua/lua_CurveInterpolationType.cpp \
    lua/lua_DepthStencilTarget.cpp \
    lua/lua_DepthStencilTargetFormat.cpp \
    lua/lua_Effect.cpp \
    lua/lua_FileSystem.cpp \
    lua/lua_FlowLayout.cpp \
    lua/lua_Font.cpp \
    lua/lua_FontFormat.cpp \
    lua/lua_FontGlyph.cpp \
    lua/lua_FontJustify.cpp \
    lua/lua_FontStyle.cpp \
    lua/lua_Form.cpp \
    lua/lua_FrameBuffer.cpp \
    lua/lua_Frustum.cpp \
    lua/lua_Game.cpp \
    lua/lua_GameClearFlags.cpp \
    lua/lua_Gamepad.cpp \
    lua/lua_GamepadButtonMapping.cpp \
    lua/lua_GamepadGamepadEvent.cpp \
    lua/lua_GameState.cpp \
    lua/lua_Gesture.cpp \
    lua/lua_GestureGestureEvent.cpp \
    lua/lua_Global.cpp \
    lua/lua_HeightField.cpp \
    lua/lua_HorizontalLayout.cpp \
    lua/lua_Image.cpp \
    lua/lua_ImageControl.cpp \
    lua/lua_ImageFormat.cpp \
    lua/lua_Joint.cpp \
    lua/lua_JoystickControl.cpp \
    lua/lua_Keyboard.cpp \
    lua/lua_KeyboardKey.cpp \
    lua/lua_KeyboardKeyEvent.cpp \
    lua/lua_Label.cpp \
    lua/lua_Layout.cpp \
    lua/lua_LayoutType.cpp \
    lua/lua_Light.cpp \
    lua/lua_LightType.cpp \
    lua/lua_Logger.cpp \
    lua/lua_LoggerLevel.cpp \
    lua/lua_Material.cpp \
    lua/lua_MaterialParameter.cpp \
    lua/lua_MathUtil.cpp \
    lua/lua_Matrix.cpp \
    lua/lua_Matrix3.cpp \
    lua/lua_Mesh.cpp \
    lua/lua_MeshBatch.cpp \
    lua/lua_MeshIndexFormat.cpp \
    lua/lua_MeshPart.cpp \
    lua/lua_MeshPrimitiveType.cpp \
    lua/lua_MeshSkin.cpp \
    lua/lua_Model.cpp \
    lua/lua_Mouse.cpp \
    lua/lua_MouseMouseEvent.cpp \
    lua/lua_Node.cpp \
    lua/lua_NodeCloneContext.cpp \
    lua/lua_NodeType.cpp \
    lua/lua_ParticleEmitter.cpp \
    lua/lua_ParticleEmitterTextureBlending.cpp \
    lua/lua_Pass.cpp \
    lua/lua_PhysicsCharacter.cpp \
    lua/lua_PhysicsCollisionObject.cpp \
    lua/lua_PhysicsCollisionObjectCollisionListener.cpp \
    lua/lua_PhysicsCollisionObjectCollisionListenerEventType.cpp \
    lua/lua_PhysicsCollisionObjectCollisionPair.cpp \
    lua/lua_PhysicsCollisionObjectType.cpp \
    lua/lua_PhysicsCollisionShape.cpp \
    lua/lua_PhysicsCollisionShapeDefinition.cpp \
    lua/lua_PhysicsCollisionShapeType.cpp \
    lua/lua_PhysicsConstraint.cpp \
    lua/lua_PhysicsController.cpp \
    lua/lua_PhysicsControllerHitFilter.cpp \
    lua/lua_PhysicsControllerHitResult.cpp \
    lua/lua_PhysicsControllerListener.cpp \
    lua/lua_PhysicsControllerListenerEventType.cpp \
    lua/lua_PhysicsFixedConstraint.cpp \
    lua/lua_PhysicsGenericConstraint.cpp \
    lua/lua_PhysicsGhostObject.cpp \
    lua/lua_PhysicsHingeConstraint.cpp \
    lua/lua_PhysicsRigidBody.cpp \
    lua/lua_PhysicsRigidBodyParameters.cpp \
    lua/lua_PhysicsSocketConstraint.cpp \
    lua/lua_PhysicsSpringConstraint.cpp \
    lua/lua_PhysicsVehicle.cpp \
    lua/lua_PhysicsVehicleWheel.cpp \
    lua/lua_Plane.cpp \
    lua/lua_Platform.cpp \
    lua/lua_ProgressBar.cpp \
    lua/lua_ProgressBarOrientationType.cpp \
    lua/lua_Properties.cpp \
    lua/lua_PropertiesType.cpp \
    lua/lua_Quaternion.cpp \
    lua/lua_RadioButton.cpp \
    lua/lua_Ray.cpp \
    lua/lua_Rectangle.cpp \
    lua/lua_Ref.cpp \
    lua/lua_RenderState.cpp \
    lua/lua_RenderStateAutoBinding.cpp \
    lua/lua_RenderStateBlend.cpp \
    lua/lua_RenderStateCullFaceSide.cpp \
    lua/lua_RenderStateDepthFunction.cpp \
    lua/lua_RenderStateFrontFace.cpp  \
    lua/lua_RenderStateStateBlock.cpp \
    lua/lua_RenderStateStencilFunction.cpp \
    lua/lua_RenderStateStencilOperation.cpp \
    lua/lua_RenderTarget.cpp \
    lua/lua_Scene.cpp \
    lua/lua_ScreenDisplayer.cpp \
    lua/lua_ScriptController.cpp \
    lua/lua_ScriptTarget.cpp \
    lua/lua_Slider.cpp \
    lua/lua_SpriteBatch.cpp \
    lua/lua_Technique.cpp \
    lua/lua_Terrain.cpp \
    lua/lua_TerrainFlags.cpp \
    lua/lua_TerrainPatch.cpp \
    lua/lua_TextBox.cpp \
    lua/lua_TextBoxInputMode.cpp \
    lua/lua_Texture.cpp \
    lua/lua_TextureCubeFace.cpp \
    lua/lua_TextureFilter.cpp \
    lua/lua_TextureFormat.cpp \
    lua/lua_TextureSampler.cpp \
    lua/lua_TextureType.cpp \
    lua/lua_TextureWrap.cpp \
    lua/lua_Theme.cpp \
    lua/lua_ThemeSideRegions.cpp \
    lua/lua_ThemeStyle.cpp \
    lua/lua_ThemeThemeImage.cpp \
    lua/lua_ThemeUVs.cpp \
    lua/lua_Touch.cpp \
    lua/lua_TouchTouchEvent.cpp \
    lua/lua_Transform.cpp \
    lua/lua_TransformListener.cpp \
    lua/lua_Uniform.cpp \
    lua/lua_Vector2.cpp \
    lua/lua_Vector3.cpp \
    lua/lua_Vector4.cpp \
    lua/lua_VertexAttributeBinding.cpp \
    lua/lua_VertexFormat.cpp \
    lua/lua_VertexFormatElement.cpp \
    lua/lua_VertexFormatUsage.cpp \
    lua/lua_VerticalLayout.cpp \
    social/GooglePlaySocialSession.cpp \
    storefront/GoogleStoreFront.cpp \
    storefront/StoreProduct.cpp \
    storefront/StoreController.cpp \
    storefront/NullStoreFront.cpp \

LOCAL_CPPFLAGS += -std=c++11 -Wno-switch-enum -Wno-switch
LOCAL_CFLAGS := -D__ANDROID__ -DGP_USE_SOCIAL -DGP_USE_STOREFRONT -O3 -DFORCE_CLEAN_SHUTDOWN -fexceptions -I"../../external-deps/yaml/include" -I"../../external-deps/lua/include" -I"../../external-deps/bullet/include" -I"../../external-deps/png/include" -I"../../external-deps/ogg/include" -I"../../external-deps/vorbis/include" -I"../../external-deps/openal/include" -I"../../external-deps/yaml/include"
LOCAL_ARM_MODE := arm
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2 -lOpenSLES
LOCAL_ADDITIONAL_DEPENDENCIES := gameplay
LOCAL_STATIC_LIBRARIES := android_native_app_glue libpng libz liblua libBulletDynamics libBulletCollision libLinearMath libvorbis libogg libOpenAL libyaml
include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

