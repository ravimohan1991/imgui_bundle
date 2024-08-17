#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E echo_append
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/sdl-populate-patch
fi

