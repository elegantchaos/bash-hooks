

STARTUP_FOLDER="$HOME/.config/bash-hooks/startup"

if [[ -e "$STARTUP_FOLDER" ]]
then
    for f in "$STARTUP_FOLDER"/*
    do
        source "$f"
    done
fi

if [[ -e "$HOME/.bashrc.backup" ]]
then
    source "$HOME/.bashrc.backup"
fi
