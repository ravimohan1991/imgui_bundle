#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild
  make -f /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/sdl-subbuild/CMakeScripts/ReRunCMake.make
fi

