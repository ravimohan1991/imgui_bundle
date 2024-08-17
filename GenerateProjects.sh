#!/bin/sh
mkdir KarmaiOSLightHouse
cd KarmaiOSLightHouse
# KeychainAccess -> Apple Development -> Organizational Unit -> CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM
cmake -DCMAKE_TOOLCHAIN_FILE=hello_imgui_cmake/ios-cmake/ios.toolchain.cmake -GXcode -DPLATFORM=OS64COMBINED -DCMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM=48P2XXCRK8 -DHELLOIMGUI_USE_FREETYPE=off -DVulkan_LIBRARY=/usr/local/lib/libvulkan.dylib -DIOS=on -DHELLOIMGUI_WITH_TEST_ENGINE=ON -DOPENGL_gl_LIBRARY=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/System/Library/Frameworks/OpenGL.framework -DOPENGL_INCLUDE_DIR=/opt/X11/include -DIMGUI_BUNDLE_WITH_NANOVG=off ..
