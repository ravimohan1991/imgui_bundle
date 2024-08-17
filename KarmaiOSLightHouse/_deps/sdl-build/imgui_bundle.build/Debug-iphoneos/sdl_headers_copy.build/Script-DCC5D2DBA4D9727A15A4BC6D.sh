#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E copy_if_different /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_main.h
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E copy_if_different /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_main.h
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E copy_if_different /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_main.h
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E copy_if_different /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src/include/SDL_main.h /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-build/include/SDL2/SDL_main.h
fi

