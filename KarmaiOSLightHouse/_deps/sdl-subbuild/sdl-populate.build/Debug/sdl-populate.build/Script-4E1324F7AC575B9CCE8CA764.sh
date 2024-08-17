#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-src
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -P /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild/sdl-populate-prefix/tmp/sdl-populate-gitupdate.cmake
fi

