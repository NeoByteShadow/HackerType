#!/bin/bash

# Couleurs ANSI façon rétro
GREEN='\033[1;32m'
NC='\033[0m' # No Color

# Fonction pour effet "machine à écrire"
typewriter() {
    text="$1"
    delay="${2:-0.05}"  # par défaut 0.05s entre chaque caractère
    for ((i=0; i<${#text}; i++)); do
        echo -n -e "${GREEN}${text:$i:1}${NC}"
        sleep "$delay"
    done
    echo
}

# ASCII art simple
ascii_art() {
cat << "EOF"
  _   _      _ _        __        __         _     _ 
 | | | | ___| | | ___   \ \      / /__  _ __| | __| |
 | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |
 |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |
 |_| |_|\___|_|_|\___( )   \_/\_/ \___/|_|  |_|\__,_|
                     |/                               
EOF
}

# Lancement
clear
tput civis # cache le curseur

ascii_art
echo
sleep 1

typewriter "Initializing hacker interface..."
sleep 1

USER_NAME=$(whoami)
CURRENT_TIME=$(date +"%H:%M:%S")
CURRENT_DATE=$(date +"%Y-%m-%d")

echo
typewriter "Access granted to user: $USER_NAME"
sleep 0.5
typewriter "System Date: $CURRENT_DATE"
typewriter "System Time: $CURRENT_TIME"
echo
sleep 0.5
typewriter ">>> Hello, world. We're in. <<<"
echo
sleep 1

tput cnorm # restaure le curseur
