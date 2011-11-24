# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)


#include $(CLEAR_VARS)
#LOCAL_MODULE    := my_gnustl_shared
#LOCAL_SRC_FILES := external/lib/$(TARGET_ARCH_ABI)/libgnustl_shared.so
#include $(PREBUILT_SHARED_LIBRARY)



include $(CLEAR_VARS)
# PNG (also includez zlib and bzip)
#

#LOCAL_MODULE    := png
png = 	irrlicht/libpng/pngrtran.c irrlicht/libpng/pngrio.c irrlicht/libpng/pngwio.c irrlicht/libpng/pngwrite.c \
	irrlicht/libpng/example.c irrlicht/libpng/pngtrans.c irrlicht/libpng/pngpread.c irrlicht/libpng/pngset.c irrlicht/libpng/pngwutil.c \
	irrlicht/libpng/pngmem.c irrlicht/libpng/pngget.c irrlicht/libpng/pngread.c irrlicht/libpng/pngwtran.c irrlicht/libpng/pngrutil.c \
	irrlicht/libpng/png.c irrlicht/libpng/pngerror.c irrlicht/zlib/crc32.c irrlicht/zlib/compress.c irrlicht/zlib/trees.c irrlicht/zlib/uncompr.c \
	irrlicht/zlib/gzwrite.c irrlicht/zlib/gzclose.c irrlicht/zlib/adler32.c irrlicht/zlib/deflate.c irrlicht/zlib/gzread.c irrlicht/zlib/inflate.c \
	irrlicht/zlib/zutil.c irrlicht/zlib/inffast.c irrlicht/zlib/infback.c irrlicht/zlib/inftrees.c irrlicht/zlib/gzlib.c irrlicht/bzip2/randtable.c \
	irrlicht/bzip2/bzip.css irrlicht/bzip2/decompress.c irrlicht/bzip2/huffman.c irrlicht/bzip2/bzcompress.c irrlicht/bzip2/crctable.c \
	irrlicht/bzip2/blocksort.c irrlicht/bzip2/bzlib.c \

#LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM -lGLESv2
#LOCAL_CFLAGS := -I./irrlicht/ -I./../include/ -I./include/ -I./irrlicht/libpng/ -I./jni/stk/ -Ijni/stk/bullet/src/ -Ijni/stk/enet/include/ -DNO_SOUND -DNO_ADDONS -DHAS_SOCKLEN_T
#include $(BUILD_STATIC_LIBRARY)

# JPEG
#
#include $(CLEAR_VARS)

#LOCAL_MODULE    := jpeg
#LOCAL_SRC_FILES
jpeg = irrlicht/jpeglib/jcarith.c irrlicht/jpeglib/rdcolmap.c irrlicht/jpeglib/jfdctflt.c irrlicht/jpeglib/jdapimin.c \
	irrlicht/jpeglib/rdppm.c irrlicht/jpeglib/wrgif.c irrlicht/jpeglib/jdcolor.c irrlicht/jpeglib/jerror.c irrlicht/jpeglib/jquant1.c \
	irrlicht/jpeglib/rdbmp.c irrlicht/jpeglib/jaricom.c irrlicht/jpeglib/jcmaster.c irrlicht/jpeglib/jcinit.c irrlicht/jpeglib/jdapistd.c \
	irrlicht/jpeglib/jdsample.c irrlicht/jpeglib/jfdctfst.c irrlicht/jpeglib/jdinput.c irrlicht/jpeglib/jcapistd.c irrlicht/jpeglib/jidctfst.c \
	irrlicht/jpeglib/jdatasrc.c irrlicht/jpeglib/rdgif.c irrlicht/jpeglib/jddctmgr.c irrlicht/jpeglib/transupp.c irrlicht/jpeglib/jutils.c \
	irrlicht/jpeglib/wrtarga.c irrlicht/jpeglib/jmemnobs.c irrlicht/jpeglib/jmemmgr.c irrlicht/jpeglib/rdtarga.c irrlicht/jpeglib/jdmerge.c \
	irrlicht/jpeglib/rdrle.c irrlicht/jpeglib/jcapimin.c irrlicht/jpeglib/jcdctmgr.c irrlicht/jpeglib/jchuff.c irrlicht/jpeglib/jdmaster.c \
	irrlicht/jpeglib/jdmarker.c irrlicht/jpeglib/jctrans.c irrlicht/jpeglib/jdcoefct.c irrlicht/jpeglib/wrppm.c irrlicht/jpeglib/jcomapi.c \
	irrlicht/jpeglib/jfdctint.c irrlicht/jpeglib/rdswitch.c irrlicht/jpeglib/jcsample.c irrlicht/jpeglib/jdhuff.c irrlicht/jpeglib/jdmainct.c \
	irrlicht/jpeglib/wrrle.c irrlicht/jpeglib/jcparam.c irrlicht/jpeglib/jquant2.c irrlicht/jpeglib/jcmarker.c irrlicht/jpeglib/jccoefct.c \
	irrlicht/jpeglib/jdarith.c irrlicht/jpeglib/wrbmp.c irrlicht/jpeglib/jdatadst.c irrlicht/jpeglib/jidctflt.c irrlicht/jpeglib/jdpostct.c \
	irrlicht/jpeglib/jcprepct.c irrlicht/jpeglib/jdtrans.c irrlicht/jpeglib/jidctint.c irrlicht/jpeglib/jcmainct.c irrlicht/jpeglib/jccolor.c

#LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM -lGLESv2
#LOCAL_CFLAGS := -I./irrlicht/ -I./../include/ -I./include/ -I./irrlicht/libpng/ -I./jni/stk/ -Ijni/stk/bullet/src/ -Ijni/stk/enet/include/ -DNO_SOUND -DNO_ADDONS -DHAS_SOCKLEN_T
#include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)


#LOCAL_MODULE    := libirrlicht
irrlicht = irrlicht/CIrrDeviceAndroid.cpp \
	irrlicht/CParticleGravityAffector.cpp \
	irrlicht/CTRTextureFlat.cpp \
	irrlicht/CParticleSphereEmitter.cpp \
	irrlicht/CCameraSceneNode.cpp \
	irrlicht/CZipReader.cpp \
	irrlicht/COgreMeshFileLoader.cpp \
	irrlicht/COGLES2SLMaterialRenderer.cpp \
	irrlicht/CTRTextureBlend.cpp \
	irrlicht/CTRTextureLightMap2_M1.cpp \
	irrlicht/CZBuffer.cpp \
	irrlicht/COGLES2Driver.cpp \
	irrlicht/CShadowVolumeSceneNode.cpp \
	irrlicht/CImageLoaderTGA.cpp \
	irrlicht/CGUIEditBox.cpp \
	irrlicht/CTRTextureFlatWire.cpp \
	irrlicht/CMeshManipulator.cpp \
	irrlicht/CSceneNodeAnimatorFlyStraight.cpp \
	irrlicht/CSkyBoxSceneNode.cpp \
	irrlicht/CTRTextureGouraudWire.cpp \
	irrlicht/COGLES2Texture.cpp \
	irrlicht/CIrrDeviceConsole.cpp \
	irrlicht/CImageWriterPSD.cpp \
	irrlicht/CDefaultSceneNodeFactory.cpp \
	irrlicht/CGUIModalScreen.cpp \
	irrlicht/CFPSCounter.cpp \
	irrlicht/CSoftwareTexture.cpp \
	irrlicht/CSceneNodeAnimatorCameraMaya.cpp \
	irrlicht/CD3D9HLSLMaterialRenderer.cpp \
	irrlicht/CTRGouraudWire.cpp \
	irrlicht/CSoftwareDriver2.cpp \
	irrlicht/CTRTextureLightMap2_Add.cpp \
	irrlicht/CTRTextureLightMap2_M2.cpp \
	irrlicht/CSceneLoaderIrr.cpp \
	irrlicht/CGUIInOutFader.cpp \
	irrlicht/CGUIMessageBox.cpp \
	irrlicht/CGUIFont.cpp \
	irrlicht/CAnimatedMeshSceneNode.cpp \
	irrlicht/CPLYMeshWriter.cpp \
	irrlicht/CImageWriterPNG.cpp \
	irrlicht/CSceneNodeAnimatorFlyCircle.cpp \
	irrlicht/COpenGLSLMaterialRenderer.cpp \
	irrlicht/CAnimatedMeshMD3.cpp \
	irrlicht/CNullDriver.cpp \
	irrlicht/CGUIColorSelectDialog.cpp \
	irrlicht/lzma/LzmaDec.c irrlicht/CCubeSceneNode.cpp \
	irrlicht/CDefaultGUIElementFactory.cpp \
	irrlicht/CCSMLoader.cpp \
	irrlicht/CGUIWindow.cpp \
	irrlicht/COGLES2Renderer2D.cpp \
	irrlicht/CTriangleBBSelector.cpp \
	irrlicht/COctreeSceneNode.cpp \
	irrlicht/CGUISpriteBank.cpp \
	irrlicht/CTRGouraudAlphaNoZ2.cpp \
	irrlicht/CMetaTriangleSelector.cpp \
	irrlicht/CPakReader.cpp \
	irrlicht/CImageLoaderJPG.cpp \
	irrlicht/CWADReader.cpp \
	irrlicht/CGUITabControl.cpp \
	irrlicht/CGUITable.cpp \
	irrlicht/CLWOMeshFileLoader.cpp \
	irrlicht/CEmptySceneNode.cpp \
	irrlicht/CTRTextureGouraudAlphaNoZ.cpp \
	irrlicht/COGLESExtensionHandler.cpp \
	irrlicht/CTRTextureWire2.cpp \
	irrlicht/CSceneNodeAnimatorTexture.cpp \
	irrlicht/CReadFile.cpp \
	irrlicht/CGUITreeView.cpp \
	irrlicht/CDMFLoader.cpp \
	irrlicht/CSphereSceneNode.cpp \
	irrlicht/CAnimatedMeshMD2.cpp \
	irrlicht/CImageWriterTGA.cpp \
	irrlicht/CTarReader.cpp \
	irrlicht/CGUIMenu.cpp \
	irrlicht/COGLES2ExtensionHandler.cpp \
	irrlicht/CIrrDeviceStub.cpp \
	irrlicht/CIrrDeviceIPhone.cpp \
	irrlicht/CAttributes.cpp \
	irrlicht/CTRTextureGouraudAddNoZ2.cpp \
	irrlicht/CImageLoaderRGB.cpp \
	irrlicht/CTerrainTriangleSelector.cpp \
	irrlicht/CNPKReader.cpp \
	irrlicht/CB3DMeshFileLoader.cpp \
	irrlicht/CBSPMeshFileLoader.cpp \
	irrlicht/Irrlicht.cpp \
	irrlicht/COctreeTriangleSelector.cpp \
	irrlicht/CGUIImage.cpp \
	irrlicht/COBJMeshWriter.cpp \
	irrlicht/CWriteFile.cpp \
	irrlicht/CTRTextureLightMap2_M4.cpp \
	irrlicht/CImageWriterPPM.cpp \
	irrlicht/CTRTextureGouraudAdd.cpp \
	irrlicht/CImageWriterJPG.cpp \
	irrlicht/CTerrainSceneNode.cpp \
	irrlicht/CGUIListBox.cpp \
	irrlicht/CIrrDeviceWinCE.cpp \
	irrlicht/CXMeshFileLoader.cpp \
	irrlicht/CTRTextureGouraudAlpha.cpp \
	irrlicht/CD3D8Driver.cpp \
	irrlicht/CD3D8ShaderMaterialRenderer.cpp \
	irrlicht/C3DSMeshFileLoader.cpp \
	irrlicht/CBurningShader_Raster_Reference.cpp \
	irrlicht/COGLES2NormalMapRenderer.cpp \
	irrlicht/CVolumeLightSceneNode.cpp \
	irrlicht/CSceneNodeAnimatorFollowSpline.cpp \
	irrlicht/CTRGouraud2.cpp \
	irrlicht/CGUISkin.cpp \
	irrlicht/CTriangleSelector.cpp \
	irrlicht/COpenGLParallaxMapRenderer.cpp \
	irrlicht/CLightSceneNode.cpp \
	irrlicht/COpenGLTexture.cpp \
	irrlicht/CGUIStaticText.cpp \
	irrlicht/CImageLoaderPNG.cpp \
	irrlicht/CImageWriterBMP.cpp \
	irrlicht/CGUIMeshViewer.cpp \
	irrlicht/CMeshSceneNode.cpp \
	irrlicht/CGUIImageList.cpp \
	irrlicht/CPLYMeshFileLoader.cpp \
	irrlicht/CWaterSurfaceSceneNode.cpp \
	irrlicht/CSoftwareDriver.cpp \
	irrlicht/CTRStencilShadow.cpp \
	irrlicht/CTRGouraud.cpp \
	irrlicht/CGeometryCreator.cpp \
	irrlicht/CParticleScaleAffector.cpp \
	irrlicht/CMD3MeshFileLoader.cpp \
	irrlicht/CColladaFileLoader.cpp \
	irrlicht/aesGladman/aeskey.cpp \
	irrlicht/aesGladman/aescrypt.cpp \
	irrlicht/aesGladman/prng.cpp \
	irrlicht/aesGladman/pwd2key.cpp \
	irrlicht/aesGladman/sha2.cpp \
	irrlicht/aesGladman/fileenc.cpp \
	irrlicht/aesGladman/sha1.cpp \
	irrlicht/aesGladman/hmac.cpp \
	irrlicht/aesGladman/aestab.cpp \
	irrlicht/CImageLoaderDDS.cpp \
	irrlicht/CImageWriterPCX.cpp \
	irrlicht/CGUIComboBox.cpp \
	irrlicht/CBillboardSceneNode.cpp \
	irrlicht/CFileSystem.cpp \
	irrlicht/CParticlePointEmitter.cpp \
	irrlicht/CMountPointReader.cpp \
	irrlicht/CSkyDomeSceneNode.cpp \
	irrlicht/CSceneCollisionManager.cpp \
	irrlicht/CSkinnedMesh.cpp \
	irrlicht/CGUIEnvironment.cpp \
	irrlicht/CTRGouraudAlpha2.cpp \
	irrlicht/CQ3LevelMesh.cpp \
	irrlicht/CD3D9Texture.cpp \
	irrlicht/CMS3DMeshFileLoader.cpp \
	irrlicht/CParticleAnimatedMeshSceneNodeEmitter.cpp \
	irrlicht/CSceneNodeAnimatorRotation.cpp \
	irrlicht/CIrrDeviceFB.cpp \
	irrlicht/COGLES2ParallaxMapRenderer.cpp \
	irrlicht/CSceneNodeAnimatorDelete.cpp \
	irrlicht/CMemoryFile.cpp \
	irrlicht/COBJMeshFileLoader.cpp \
	irrlicht/CParticleFadeOutAffector.cpp \
	irrlicht/irrXML.cpp \
	irrlicht/IBurningShader.cpp \
	irrlicht/COGLES2FixedPipelineShader.cpp \
	irrlicht/CDefaultSceneNodeAnimatorFactory.cpp \
	irrlicht/CImageLoaderWAL.cpp \
	irrlicht/CDummyTransformationSceneNode.cpp \
	irrlicht/COpenGLShaderMaterialRenderer.cpp \
	irrlicht/CColladaMeshWriter.cpp \
	irrlicht/CParticleCylinderEmitter.cpp \
	irrlicht/CD3D8ParallaxMapRenderer.cpp \
	irrlicht/CXMLWriter.cpp \
	irrlicht/CColorConverter.cpp \
	irrlicht/CSceneManager.cpp \
	irrlicht/CQuake3ShaderSceneNode.cpp \
	irrlicht/CIrrMeshWriter.cpp \
	irrlicht/CFileList.cpp \
	irrlicht/COpenGLDriver.cpp \
	irrlicht/CGUIButton.cpp \
	irrlicht/COSOperator.cpp \
	irrlicht/os.cpp \
	irrlicht/CImage.cpp \
	irrlicht/CParticleAttractionAffector.cpp \
	irrlicht/CGUIContextMenu.cpp \
	irrlicht/CXMLReader.cpp \
	irrlicht/CParticleBoxEmitter.cpp \
	irrlicht/CLimitReadFile.cpp \
	irrlicht/CLogger.cpp \
	irrlicht/COpenGLNormalMapRenderer.cpp \
	irrlicht/CIrrDeviceLinux.cpp \
	irrlicht/CImageLoaderPSD.cpp \
	irrlicht/CGUIToolBar.cpp \
	irrlicht/CTRTextureGouraudVertexAlpha2.cpp \
	irrlicht/CIrrMeshFileLoader.cpp \
	irrlicht/CMeshCache.cpp \
	irrlicht/CTRTextureDetailMap2.cpp \
	irrlicht/CDepthBuffer.cpp \
	irrlicht/CTRTextureLightMapGouraud2_M4.cpp \
	irrlicht/CSceneNodeAnimatorCollisionResponse.cpp \
	irrlicht/CBoneSceneNode.cpp \
	irrlicht/CTRTextureGouraud2.cpp \
	irrlicht/COCTLoader.cpp \
	irrlicht/CImageLoaderPPM.cpp \
	irrlicht/CTRNormalMap.cpp \
	irrlicht/CD3D9NormalMapRenderer.cpp \
	irrlicht/CMY3DMeshFileLoader.cpp \
	irrlicht/CSTLMeshFileLoader.cpp \
	irrlicht/Irrlicht-gcc.cbp \
	irrlicht/CTRTextureGouraudNoZ2.cpp \
	irrlicht/COGLESTexture.cpp \
	irrlicht/CD3D9Driver.cpp \
	irrlicht/CGUICheckBox.cpp \
	irrlicht/COGLESDriver.cpp \
	irrlicht/CIrrDeviceWin32.cpp \
	irrlicht/CSTLMeshWriter.cpp \
	irrlicht/COpenGLExtensionHandler.cpp \
	irrlicht/CTRFlatWire.cpp \
	irrlicht/CIrrDeviceSDL.cpp \
	irrlicht/CParticleMeshEmitter.cpp \
	irrlicht/CTRTextureGouraudNoZ.cpp \
	irrlicht/CTRFlat.cpp \
	irrlicht/CSceneNodeAnimatorCameraFPS.cpp \
	irrlicht/CGUIScrollBar.cpp \
	irrlicht/CSoftwareTexture2.cpp \
	irrlicht/CParticleRingEmitter.cpp \
	irrlicht/CTextSceneNode.cpp \
	irrlicht/CMD2MeshFileLoader.cpp \
	irrlicht/CParticleRotationAffector.cpp \
	irrlicht/CParticleSystemSceneNode.cpp \
	irrlicht/CVideoModeList.cpp \
	irrlicht/CAnimatedMeshHalfLife.cpp \
	irrlicht/CTRTextureGouraudAdd2.cpp \
	irrlicht/CGUIFileOpenDialog.cpp \
	irrlicht/CLMTSMeshFileLoader.cpp \
	irrlicht/CD3D8NormalMapRenderer.cpp \
	irrlicht/CTRTextureGouraud.cpp \
	irrlicht/CD3D9ShaderMaterialRenderer.cpp \
	irrlicht/CGUISpinBox.cpp \
	irrlicht/CD3D9ParallaxMapRenderer.cpp \
	irrlicht/CImageLoaderPCX.cpp \
	irrlicht/CImageLoaderBMP.cpp \
	irrlicht/CD3D8Texture.cpp \
	irrlicht/CSMFMeshFileLoader.cpp
#LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM -lGLESv2
#LOCAL_CFLAGS := -I./irrlicht/ -I./../include/ -I./include/ -I./irrlicht/libpng/ -I./jni/stk/ -Ijni/stk/bullet/src/ -Ijni/stk/enet/include/ -DNO_SOUND -DNO_ADDONS -DHAS_SOCKLEN_T

#include $(BUILD_STATIC_LIBRARY)
#include $(CLEAR_VARS)

#include $(CLEAR_VARS)


STK = stk/challenges/unlock_manager.cpp \
   stk/challenges/challenge_data.cpp \
   stk/challenges/challenge.cpp \
   stk/tracks/check_manager.cpp \
   stk/tracks/track.cpp \
   stk/tracks/check_line.cpp \
   stk/tracks/track_manager.cpp \
   stk/tracks/track_sector.cpp \
   stk/tracks/quad_graph.cpp \
   stk/tracks/track_object.cpp \
   stk/tracks/graph_node.cpp \
   stk/tracks/check_structure.cpp \
   stk/tracks/track_object_manager.cpp \
   stk/tracks/terrain_info.cpp \
   stk/tracks/ambient_light_sphere.cpp \
   stk/tracks/quad.cpp \
   stk/tracks/check_lap.cpp \
   stk/tracks/bezier_curve.cpp \
   stk/tracks/check_sphere.cpp \
   stk/tracks/quad_set.cpp \
   stk/audio/sfx_manager.cpp \
   stk/audio/music_ogg.cpp \
   stk/audio/sfx_openal.cpp \
   stk/audio/music_manager.cpp \
   stk/audio/music_information.cpp \
   stk/audio/sfx_buffer.cpp \
   stk/items/bowling.cpp \
   stk/items/item.cpp \
   stk/items/powerup_manager.cpp \
   stk/items/swatter.cpp \
   stk/items/attachment_manager.cpp \
   stk/items/flyable.cpp \
   stk/items/item_manager.cpp \
   stk/items/powerup.cpp \
   stk/items/plunger.cpp \
   stk/items/rubber_ball.cpp \
   stk/items/rubber_band.cpp \
   stk/items/attachment.cpp \
   stk/items/projectile_manager.cpp \
   stk/items/cake.cpp \
   stk/race/history.cpp \
   stk/race/grand_prix_manager.cpp \
   stk/race/race_manager.cpp \
   stk/race/highscore_manager.cpp \
   stk/race/highscores.cpp \
   stk/race/grand_prix_data.cpp \
   stk/main_loop.cpp \
   stk/physics/irr_debug_drawer.cpp \
   stk/physics/btUprightConstraint.cpp \
   stk/physics/physics.cpp \
   stk/physics/btKart.cpp \
   stk/physics/physical_object.cpp \
   stk/physics/triangle_mesh.cpp \
   stk/physics/btKartRaycast.cpp \
   stk/tutorial/tutorial_data.cpp \
   stk/tutorial/tutorial_manager.cpp \
   stk/tutorial/tutorial.cpp \
   stk/enet/peer.c stk/enet/compress.c stk/enet/host.c stk/enet/callbacks.c stk/enet/packet.c stk/enet/win32.c stk/enet/protocol.c stk/enet/list.c stk/enet/unix.c stk/main.cpp \
   stk/states_screens/help_screen_4.cpp \
   stk/states_screens/help_screen_2.cpp \
   stk/states_screens/credits.cpp \
   stk/states_screens/challenges.cpp \
   stk/states_screens/tutorial_screen.cpp \
   stk/states_screens/help_screen_3.cpp \
   stk/states_screens/race_result_gui.cpp \
   stk/states_screens/options_screen_players.cpp \
   stk/states_screens/options_screen_audio.cpp \
   stk/states_screens/state_manager.cpp \
   stk/states_screens/help_screen_1.cpp \
   stk/states_screens/race_gui.cpp \
   stk/states_screens/options_screen_input2.cpp \
   stk/states_screens/kart_selection.cpp \
   stk/states_screens/options_screen_input.cpp \
   stk/states_screens/main_menu_screen.cpp \
   stk/states_screens/options_screen_ui.cpp \
   stk/states_screens/feature_unlocked.cpp \
   stk/states_screens/grand_prix_win.cpp \
   stk/states_screens/dialogs/track_info_dialog.cpp \
   stk/states_screens/dialogs/race_over_dialog.cpp \
   stk/states_screens/dialogs/player_info_dialog.cpp \
   stk/states_screens/dialogs/addons_loading.cpp \
   stk/states_screens/dialogs/confirm_resolution_dialog.cpp \
   stk/states_screens/dialogs/press_a_key_dialog.cpp \
   stk/states_screens/dialogs/message_dialog.cpp \
   stk/states_screens/dialogs/add_device_dialog.cpp \
   stk/states_screens/dialogs/race_paused_dialog.cpp \
   stk/states_screens/dialogs/enter_player_name_dialog.cpp \
   stk/states_screens/dialogs/gp_info_dialog.cpp \
   stk/states_screens/arenas_screen.cpp \
   stk/states_screens/addons_screen.cpp \
   stk/states_screens/options_screen_video.cpp \
   stk/states_screens/race_gui_base.cpp \
   stk/states_screens/race_setup_screen.cpp \
   stk/states_screens/minimal_race_gui.cpp \
   stk/states_screens/tracks_screen.cpp \
   stk/states_screens/grand_prix_lose.cpp \
   stk/network/message.cpp \
   stk/network/network_kart.cpp \
   stk/network/kart_control_message.cpp \
   stk/network/race_state.cpp \
   stk/network/kart_update_message.cpp \
   stk/network/race_info_message.cpp \
   stk/network/race_result_message.cpp \
   stk/network/network_manager.cpp \
   stk/network/connect_message.cpp \
   stk/utils/vec3.cpp \
   stk/utils/translation.cpp \
   stk/utils/profiler.cpp \
   stk/utils/leak_check.cpp \
   stk/utils/string_utils.cpp \
   stk/utils/constants.cpp \
   stk/utils/random_generator.cpp \
   stk/addons/news_manager.cpp \
   stk/addons/network_http.cpp \
   stk/addons/addon.cpp \
   stk/addons/zip.cpp \
   stk/addons/request.cpp \
   stk/addons/addons_manager.cpp \
   stk/animations/billboard_animation.cpp \
   stk/animations/animation_base.cpp \
   stk/animations/ipo.cpp \
   stk/animations/three_d_animation.cpp \
   stk/input/input_manager.cpp \
   stk/input/device_manager.cpp \
   stk/input/binding.cpp \
   stk/input/input_device.cpp \
   stk/modes/standard_race.cpp \
   stk/modes/three_strikes_battle.cpp \
   stk/modes/world_status.cpp \
   stk/modes/world_with_rank.cpp \
   stk/modes/profile_world.cpp \
   stk/modes/world.cpp \
   stk/modes/tutorial_race.cpp \
   stk/modes/follow_the_leader.cpp \
   stk/modes/linear_world.cpp \
   stk/modes/game_tutorial.cpp \
   stk/config/stk_config.cpp \
   stk/config/user_config.cpp \
   stk/config/device_config.cpp \
   stk/karts/emergency_animation.cpp \
   stk/karts/moveable.cpp \
   stk/karts/kart_with_stats.cpp \
   stk/karts/kart.cpp \
   stk/karts/kart_properties_manager.cpp \
   stk/karts/max_speed.cpp \
   stk/karts/kart_model.cpp \
   stk/karts/controller/controller.cpp \
   stk/karts/controller/new_ai_controller.cpp \
   stk/karts/controller/player_controller.cpp \
   stk/karts/controller/ai_base_controller.cpp \
   stk/karts/controller/default_ai_controller.cpp \
   stk/karts/controller/end_controller.cpp \
   stk/karts/kart_properties.cpp \
   stk/io/xml_node.cpp \
   stk/io/file_manager.cpp \
   stk/io/xml_writer.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btGhostObject.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btUnionFind.cpp \
   stk/bullet/src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btDbvt.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp \
   stk/bullet/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp \
   stk/bullet/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConcaveShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btBoxShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btCompoundShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConeShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvex2dShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btBox2dShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btEmptyShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btCylinderShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleBuffer.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btSphereShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btShapeHull.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleCallback.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btCollisionShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp \
   stk/bullet/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp \
   stk/bullet/src/BulletCollision/Gimpact/gim_contact.cpp \
   stk/bullet/src/BulletCollision/Gimpact/gim_box_set.cpp \
   stk/bullet/src/BulletCollision/Gimpact/gim_tri_collision.cpp \
   stk/bullet/src/BulletCollision/Gimpact/gim_memory.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btGImpactShape.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btContactProcessing.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btGImpactBvh.cpp \
   stk/bullet/src/BulletCollision/Gimpact/btGenericPoolAllocator.cpp \
   stk/bullet/src/BulletDynamics/Character/btKinematicCharacterController.cpp \
   stk/bullet/src/BulletDynamics/Dynamics/Bullet-C-API.cpp \
   stk/bullet/src/BulletDynamics/Dynamics/btContinuousDynamicsWorld.cpp \
   stk/bullet/src/BulletDynamics/Dynamics/btRigidBody.cpp \
   stk/bullet/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp \
   stk/bullet/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp \
   stk/bullet/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp \
   stk/bullet/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp \
   stk/bullet/src/BulletDynamics/Vehicle/btWheelInfo.cpp \
   stk/bullet/src/LinearMath/btSerializer.cpp \
   stk/bullet/src/LinearMath/btConvexHull.cpp \
   stk/bullet/src/LinearMath/btQuickprof.cpp \
   stk/bullet/src/LinearMath/btGeometryUtil.cpp \
   stk/bullet/src/LinearMath/btConvexHullComputer.cpp \
   stk/bullet/src/LinearMath/btAlignedAllocator.cpp \
   stk/guiengine/modaldialog.cpp \
   stk/guiengine/widget.cpp \
   stk/guiengine/screen.cpp \
   stk/guiengine/scalable_font.cpp \
   stk/guiengine/CGUISpriteBank.cpp \
   stk/guiengine/engine.cpp \
   stk/guiengine/skin.cpp \
   stk/guiengine/event_handler.cpp \
   stk/guiengine/layout_manager.cpp \
   stk/guiengine/abstract_state_manager.cpp \
   stk/guiengine/screen_loader.cpp \
   stk/guiengine/abstract_top_level_container.cpp \
   stk/guiengine/widgets/CGUIEditBox.cpp \
   stk/guiengine/widgets/dynamic_ribbon_widget.cpp \
   stk/guiengine/widgets/icon_button_widget.cpp \
   stk/guiengine/widgets/model_view_widget.cpp \
   stk/guiengine/widgets/ribbon_widget.cpp \
   stk/guiengine/widgets/text_box_widget.cpp \
   stk/guiengine/widgets/label_widget.cpp \
   stk/guiengine/widgets/progress_bar_widget.cpp \
   stk/guiengine/widgets/button_widget.cpp \
   stk/guiengine/widgets/list_widget.cpp \
   stk/guiengine/widgets/spinner_widget.cpp \
   stk/guiengine/widgets/bubble_widget.cpp \
   stk/guiengine/widgets/check_box_widget.cpp \
   stk/graphics/slip_stream.cpp \
   stk/graphics/hardware_skinning.cpp \
   stk/graphics/per_camera_node.cpp \
   stk/graphics/skid_marks.cpp \
   stk/graphics/material.cpp \
   stk/graphics/mesh_tools.cpp \
   stk/graphics/hit_sfx.cpp \
   stk/graphics/lod_node.cpp \
   stk/graphics/moving_texture.cpp \
   stk/graphics/particle_emitter.cpp \
   stk/graphics/CBatchingMesh.cpp \
   stk/graphics/explosion.cpp \
   stk/graphics/post_processing.cpp \
   stk/graphics/referee.cpp \
   stk/graphics/particle_kind.cpp \
   stk/graphics/stars.cpp \
   stk/graphics/particle_kind_manager.cpp \
   stk/graphics/rain.cpp \
   stk/graphics/material_manager.cpp \
   stk/graphics/shadow.cpp \
   stk/graphics/camera.cpp \
   stk/graphics/irr_driver.cpp \
   stk/replay/replay_recorder.cpp \
   stk/replay/replay_player.cpp \
   stk/replay/replay_buffers.cpp \
   stk/replay/replay_base.cpp \
   stk/tinygettext/dictionary.cpp \
   stk/tinygettext/po_parser.cpp \
   stk/tinygettext/tinygettext.cpp \
   stk/tinygettext/stk_file_system.cpp \
   stk/tinygettext/log.cpp \
   stk/tinygettext/language.cpp \
   stk/tinygettext/plural_forms.cpp \
   stk/tinygettext/iconv.cpp \
   stk/tinygettext/dictionary_manager.cpp \

#LOCAL_SRC_FILES = $(STK)
#LOCAL_MODULE    := native-activity
#LOCAL_LDLIBS := -llog -landroid -lEGL -GLESv1_CM -lGLESv2 -lirrlicht
#LOCAL_CFLAGS := -I./irrlicht/ -I./../include/ -I./include/ -I./irrlicht/libpng/ -I./jni/stk/ -Ijni/stk/bullet/src/ -Ijni/stk/enet/include/ -DNO_SOUND -DNO_ADDONS -DHAS_SOCKLEN_T
#LOCAL_STATIC_LIBRARIES := android_native_app_glue #libirrlicht jpeg png
#include $(BUILD_SHARED_LIBRARY)

LOCAL_MODULE    := irrlicht
LOCAL_SRC_FILES := main.c main2.cpp $(irrlicht) $(png) $(jpeg) $(STK)
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM -lGLESv2
LOCAL_CFLAGS := -I./irrlicht/ -I./../include/ -I./include/ -I./irrlicht/libpng/ -I./jni/stk/ -Ijni/stk/bullet/src/ -Ijni/stk/enet/include/ -DNO_CURL -DHAS_SOCKLEN_T -DSUPERTUXKART_DATADIR=\"/sdcard/stk/\"
LOCAL_STATIC_LIBRARIES := android_native_app_glue #jpeg #libirrlicht jpeg png
#LOCAL_SHARED_LIBRARIES := jpeg

include $(BUILD_SHARED_LIBRARY)


$(call import-module,android/native_app_glue)
