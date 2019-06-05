
if [[ "$BASH_HOOKS_RC" == "" ]]
then

export BASH_HOOKS_RC=1
export BASH_HOOKS_PLATFORM=`uname`
export BASH_HOOKS_ROOT="$HOME/.local/share/bash-hooks"
export BASH_HOOKS_SHELL="bash"

# Source a hook
# Before sourcing, we change the working directory to the true
# location of the hook file. This allows hooks to reference other
# local resources just using ./my-resource
export function source_hook() {
  absolute=$(readlink "$1")
  container=$(dirname "$absolute")
  pushd "$container" > /dev/null
  source "$absolute"
  popd > /dev/null
}

# Source each hook in a folder.
export function source_hooks() {
  FOLDER=$1
  if [[ -e "$FOLDER" ]]
  then
      for f in "$FOLDER"/*
      do
          source_hook $f
      done
  fi
}


source_hooks "$BASH_HOOKS_ROOT/startup"
source_hooks "$BASH_HOOKS_ROOT/startup-$BASH_HOOKS_PLATFORM"

if [[ -e "$HOME/.bashrc.backup" ]]
then
    source "$HOME/.bashrc.backup"
fi

# If not running interactively exit now
case $- in
    *i*) ;;
      *) return;;
esac

export BASH_HOOKS_INTERACTIVE=1
source_hooks "$BASH_HOOKS_ROOT/interactive"
source_hooks "$BASH_HOOKS_ROOT/interactive-$BASH_HOOKS_PLATFORM"

fi
