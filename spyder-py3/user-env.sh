#!/bin/zsh -i
unset HISTFILE

# PackageKit's `command-not-found` package can cause recursion, so
# unset it here.
# Fixes spyder-ide/spyder#24716
if type command_not_found_handle >/dev/null 2>&1; then
    unset -f command_not_found_handle
fi

/bin/zsh -l -c "'/usr/bin/python' -c 'import os; print(dict(os.environ))'"
