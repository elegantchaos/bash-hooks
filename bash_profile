if [[ -e "$HOME/.bashrc" ]]
then
    source "$HOME/.bashrc"
fi

if [[ "$BASH_HOOKS_LOGIN" == "" ]]
then
    export BASH_HOOKS_LOGIN=1

    source_hooks "$BASH_HOOKS_ROOT/login"
    source_hooks "$BASH_HOOKS_ROOT/login-$BASH_HOOKS_PLATFORM"

    if [[ -e "$HOME/.bash_profile.backup" ]]
    then
        source "$HOME/.bash_profile.backup"
    fi
fi
