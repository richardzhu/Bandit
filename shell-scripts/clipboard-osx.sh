#!/bin/bash
# OS X version
# Use this script to pipe in/out of the clipboard
#
# Usage: someapp | clipboard     # Pipe someapp's output into clipboard
#        clipboard | someapp     # Pipe clipboard's content into someapp
#

if [[ -p /dev/stdin ]] ; then
    # stdin is a pipe
    # stdin -> clipboard
    pbcopy
else
    # stdin is not a pipe
    # clipboard -> stdout
    pbpaste
fi
