#!/bin/bash

REPOSITORY="https://raw.githubusercontent.com/cbillowes/prettier/main/"
EDITOR_FILE="$REPOSITORY/.editorconfig"
PRETTIER_IGNORE_FILE="$REPOSITORY/.prettierignore"
PRETTIERRC_FILE="$REPOSITORY/.prettierrc"

echo "Drop-in prettier config from $REPOSITORY to present working directory."

echo
echo "      ____           _   _   _           "
echo "     |  _ \ _ __ ___| |_| |_(_) ___ _ __ "
echo "     | |_) | '__/ _ \ __| __| |/ _ \ '__|"
echo "    _|  __/| | |  __/ |_| |_| |  __/ |   "
echo "   (_)_|   |_|  \___|\__|\__|_|\___|_|   "
echo

curl -L $EDITOR_FILE >.editorconfig
curl -L $PRETTIER_IGNORE_FILE >.prettierignore
curl -L $PRETTIERRC_FILE >.prettierrc

echo "Done! 🎉"
