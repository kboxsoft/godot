#!/bin/sh
#/opt/local/bin/scons
cd "$SRCROOT"/../
case $1 in
  clean)
    /opt/local/bin/scons -c platform=osx
    ;;
  *)
    /opt/local/bin/scons platform=osx bits=64 tools=yes target=debug
    ;;
esac

