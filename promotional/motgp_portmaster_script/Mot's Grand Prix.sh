#!/bin/bash

GAMESUBDIR="mot_grandprix"
GAMEEXE="motgp"

# Based on
# https://portmaster.games/packaging.html#the-launchscript-sh

XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

if [ -d "/opt/system/Tools/PortMaster/" ]; then
  controlfolder="/opt/system/Tools/PortMaster"
elif [ -d "/opt/tools/PortMaster/" ]; then
  controlfolder="/opt/tools/PortMaster"
elif [ -d "$XDG_DATA_HOME/PortMaster/" ]; then
  controlfolder="$XDG_DATA_HOME/PortMaster"
else
  controlfolder="/roms/ports/PortMaster"
fi

source $controlfolder/control.txt
[ -f "${controlfolder}/mod_${CFW_NAME}.txt" ] && source "${controlfolder}/mod_${CFW_NAME}.txt"

get_controls

GAMEDIR=/$directory/ports/$GAMESUBDIR/

cd $GAMEDIR

> "$GAMEDIR/log.txt" && exec > >(tee "$GAMEDIR/log.txt") 2>&1

$ESUDO chmod +x "$GAMEDIR/$GAMEEXE.${DEVICE_ARCH}"

$GPTOKEYB "$GAMEEXE.${DEVICE_ARCH}" &
pm_platform_helper "$GAMEDIR/$GAMEEXE.${DEVICE_ARCH}"

./${GAMEEXE}.${DEVICE_ARCH}

pm_finish
