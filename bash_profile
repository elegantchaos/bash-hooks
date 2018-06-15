

LOGIN_FOLDER="$HOME/.local/share/bash-hooks/login"

if [[ -e "$LOGIN_FOLDER" ]]
then
    for f in "$LOGIN_FOLDER"/*
    do
        source "$f"
    done
fi

if [[ -e "$HOME/.bash_profile.backup" ]]
then
    source "$HOME/.bash_profile.backup"
fi
