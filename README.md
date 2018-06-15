If installed with [xpkg](https://github.com/elegantchaos/xpkg), this package hooks into the bash startup process in a way that's extensible.

It replaces the existing bashrc and bash_profile with versions that scan the `~/.config/bash-hooks/startup/` and `~/.config/bash-hooks/login/` folders, and source anything
that they find in there.

They then execute the original `bashrc` and/or `bash_profile` files, which will have been backed up as `~/.bashrc.backup` and `~/.bash_profile.backup` respectively.

This allows other packages to transparently hook into the bash startup process without having to modify `.bashrc` or `.bash_profile`.
