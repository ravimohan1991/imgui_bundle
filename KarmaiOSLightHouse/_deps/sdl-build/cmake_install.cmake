# Install script for directory: /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse")

if(NOT PLATFORM_NAME)
  if(NOT "$ENV{PLATFORM_NAME}" STREQUAL "")
    set(PLATFORM_NAME "$ENV{PLATFORM_NAME}")
  endif()
  if(NOT PLATFORM_NAME)
    set(PLATFORM_NAME iphoneos)
  endif()
endif()

if(NOT EFFECTIVE_PLATFORM_NAME)
  if(NOT "$ENV{EFFECTIVE_PLATFORM_NAME}" STREQUAL "")
    set(EFFECTIVE_PLATFORM_NAME "$ENV{EFFECTIVE_PLATFORM_NAME}")
  endif()
  if(NOT EFFECTIVE_PLATFORM_NAME)
    set(EFFECTIVE_PLATFORM_NAME -iphoneos)
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Debug${EFFECTIVE_PLATFORM_NAME}/libSDL2maind.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2main" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Release${EFFECTIVE_PLATFORM_NAME}/libSDL2main.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2main" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libSDL2main.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2main" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libSDL2main.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2main" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Debug${EFFECTIVE_PLATFORM_NAME}/libSDL2d.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2-static" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Release${EFFECTIVE_PLATFORM_NAME}/libSDL2.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2-static" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libSDL2.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2-static" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libSDL2.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2-static" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Debug${EFFECTIVE_PLATFORM_NAME}/libSDL2_test.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2_test" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/Release${EFFECTIVE_PLATFORM_NAME}/libSDL2_test.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2_test" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libSDL2_test.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2_test" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libSDL2_test.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      include(CMakeIOSInstallCombined)
      ios_install_combined("SDL2_test" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/SDL2Config.cmake"
    "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/SDL2ConfigVersion.cmake"
    "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_atomic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_audio.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_bits.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_blendmode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_clipboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_copying.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_cpuinfo.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_egl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_endian.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_error.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_events.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_filesystem.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gamecontroller.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gesture.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_guid.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_haptic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hidapi.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hints.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_joystick.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keyboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keycode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_loadso.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_locale.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_messagebox.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_metal.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_misc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mouse.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mutex.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_name.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl_glext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_pixels.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_power.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_quit.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rect.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_render.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rwops.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_scancode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_sensor.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_shape.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_stdinc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_surface.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_system.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_syswm.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_common.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_compare.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_crc32.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_font.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_harness.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_images.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_md5.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_memory.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_random.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_thread.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_timer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_touch.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_types.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_version.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_video.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_vulkan.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/begin_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/close_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_revision.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include-config-debug/SDL2/SDL_config.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_atomic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_audio.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_bits.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_blendmode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_clipboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_copying.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_cpuinfo.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_egl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_endian.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_error.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_events.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_filesystem.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gamecontroller.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gesture.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_guid.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_haptic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hidapi.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hints.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_joystick.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keyboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keycode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_loadso.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_locale.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_messagebox.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_metal.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_misc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mouse.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mutex.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_name.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl_glext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_pixels.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_power.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_quit.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rect.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_render.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rwops.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_scancode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_sensor.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_shape.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_stdinc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_surface.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_system.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_syswm.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_common.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_compare.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_crc32.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_font.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_harness.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_images.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_md5.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_memory.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_random.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_thread.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_timer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_touch.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_types.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_version.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_video.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_vulkan.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/begin_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/close_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_revision.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include-config-release/SDL2/SDL_config.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_atomic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_audio.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_bits.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_blendmode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_clipboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_copying.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_cpuinfo.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_egl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_endian.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_error.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_events.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_filesystem.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gamecontroller.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gesture.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_guid.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_haptic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hidapi.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hints.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_joystick.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keyboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keycode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_loadso.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_locale.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_messagebox.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_metal.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_misc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mouse.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mutex.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_name.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl_glext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_pixels.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_power.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_quit.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rect.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_render.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rwops.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_scancode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_sensor.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_shape.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_stdinc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_surface.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_system.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_syswm.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_common.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_compare.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_crc32.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_font.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_harness.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_images.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_md5.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_memory.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_random.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_thread.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_timer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_touch.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_types.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_version.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_video.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_vulkan.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/begin_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/close_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_revision.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include-config-minsizerel/SDL2/SDL_config.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_atomic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_audio.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_bits.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_blendmode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_clipboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_copying.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_cpuinfo.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_egl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_endian.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_error.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_events.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_filesystem.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gamecontroller.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_gesture.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_guid.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_haptic.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hidapi.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_hints.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_joystick.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keyboard.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_keycode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_loadso.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_locale.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_messagebox.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_metal.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_misc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mouse.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_mutex.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_name.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengl_glext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_pixels.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_platform.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_power.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_quit.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rect.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_render.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_rwops.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_scancode.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_sensor.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_shape.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_stdinc.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_surface.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_system.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_syswm.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_assert.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_common.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_compare.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_crc32.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_font.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_harness.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_images.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_log.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_md5.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_memory.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_test_random.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_thread.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_timer.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_touch.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_types.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_version.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_video.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_vulkan.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/begin_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/close_code.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_revision.h"
      "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include-config-relwithdebinfo/SDL2/SDL_config.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/sdl2.m4")
endif()

