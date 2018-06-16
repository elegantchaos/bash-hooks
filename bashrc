
if [[ "$BASH_HOOKS_RC" == "1" ]]
then
    exit
fi

export BASH_HOOKS_RC=1
export BASH_HOOKS_PLATFORM=`uname`
export BASH_HOOKS_ROOT="$HOME/.local/share/bash-hooks/"

function source_folder() {
  FOLDER=$1
  if [[ -e "$FOLDER" ]]
  then
      for f in "$FOLDER"/*
      do
          source "$f"
      done
  fi
}

source_folder "$BASH_HOOKS_ROOT/startup"
source_folder "$BASH_HOOKS_ROOT/startup-$BASH_HOOKS_PLATFORM"

if [[ -e "$HOME/.bashrc.backup" ]]
then
    source "$HOME/.bashrc.backup"
fi
