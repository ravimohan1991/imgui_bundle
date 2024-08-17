#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -P /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild/sdl-populate-prefix/tmp/sdl-populate-gitclone.cmake
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/sdl-populate-download
fi

