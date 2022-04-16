#!/bin/bash

REPOSITORY="https://raw.githubusercontent.com/cbillowes/prettier/main/"
EDITOR_FILE="$REPOSITORY/.editorconfig"
PRETTIER_IGNORE_FILE="$REPOSITORY/.prettierignore"
PRETTIERRC_FILE="$REPOSITORY/.prettierrc"

echo "Drop-in prettier config from $REPOSITORY."
echo "Usage: ./install.sh <path> - path to copy to relative to present working directory"

OUTPUT_DIR=$(cd $(dirname $1) && pwd)/$(basename $1)

echo
echo "      ____           _   _   _           "
echo "     |  _ \ _ __ ___| |_| |_(_) ___ _ __ "
echo "     | |_) | '__/ _ \ __| __| |/ _ \ '__|"
echo "    _|  __/| | |  __/ |_| |_| |  __/ |   "
echo "   (_)_|   |_|  \___|\__|\__|_|\___|_|   "
echo "   OUTPUT_DIR: $OUTPUT_DIR"
echo

echo "Dropping in..."

curl $EDITOR_FILE >$OUTPUT_DIR/.editorconfig
curl $PRETTIER_IGNORE_FILE >$OUTPUT_DIR/.prettierignore
curl $PRETTIERRC_FILE >$OUTPUT_DIR/.prettierrc

echo "Done! 🎉"
