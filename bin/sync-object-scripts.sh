#!/bin/sh
#
### Summary
# Syncs the Tabletop Simulator object scripts that are live with the ones in the repository.
# These are the scripts that get attached the game objects.
#
# This script:
#   (1) deletes all files in 'ObjectScripts/'
#       then
#   (2) copies all files in 'TTS_FILE_LOCATION/' to 'ObjectScripts/'.
#
### Note
# The script needs to be modified depending on which operating system you are developing on.
# Please update the sections below where the phrase "DEVELOPER" is posted.

# DEVELOPER: Put in the username for the operating system you are developing on.
USERNAME_WINDOWS="Kevin O'Mara"
USERNAME_MAC=""
USERNAME_LINUX=""

# Directory where Tabletop Simulator holds scripts attached to game objects, by operating system.
TTS_FILE_LOCATION_WINDOWS=/c/Users/$USERNAME_WINDOWS/AppData/Local/Temp/TabletopSimulator/Tabletop\ Simulator\ Lua
TTS_FILE_LOCATION_MAC=""
TTS_FILE_LOCATION_LINUX=""

# DEVELOPER: Pick the location for the operating system you are developing on.
TTS_FILES_LOCATION=$TTS_FILE_LOCATION_WINDOWS

# Directory in this repository where the Tabletop Simulator object scripts are held.
TTS_FILES_GIT="ObjectScripts"

function isEmptyDirectory {
    if [ -z "`ls -A "$1"`" ]; then
        # True, the directory is empty.
        return 0
    else
        # False, the directory is not empty.
       return 1
    fi
}

if isEmptyDirectory "$TTS_FILES_LOCATION"; then
    echo "ERROR: There are no Tabletop Simulator object script files in "$TTS_FILES_LOCATION
    echo "ERROR: Make sure Tabletop Simulator is running and that you have clicked 'Scripting > Save and Play'."
    exit 1
fi

if ! isEmptyDirectory "$TTS_FILES_GIT"; then
    rm "$TTS_FILES_GIT"/*
fi

cp "$TTS_FILES_LOCATION"/* "$TTS_FILES_GIT"/
