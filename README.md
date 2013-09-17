hsvm
====

hsvm is a tool that allows you to have multiple GHC versions installed and easily switch between them.

there is no easy-install yet, so you'll need to clone this repo wherever you wish and add the `bin/` directory to your $PATH. then, in your .{bash,zsh}rc, add

    eval "$(hsvm init)"

and you're ready to hsvm!

commands
--------

`hsvm commands` lists all commands.

`hsvm install` installs a GHC version into ~/.hsvm. usually these are downloaded from hackage's repository of pre-built GHCs, but you can `hsvm install HEAD` (which is just an alias to `hsvm build-head`) to install the latest GHC from git. it will be tagged with the generated GHC version which is (currently) of the form `7.7.YYYYmmdd`.

`hsvm install` takes extra arguments: `-3` or `--32-bit` to force a 32-bit build, `-6` or `--64-bit` to force a 64-bit build, and `-v` or `--verbose` to print build output to stdout rather than logging it. when building HEAD, the arch-related flags are ignored.

`hsvm build-head` is the same as `hsvm install HEAD`.

`hsvm current` prints out the currently used GHC.

`hsvm use` switches the currently used GHC to the specified version.

`hsvm versions` prints out all the GHCs you have installed.

`hsvm rm` removes a GHC version.

`hsvm rehash` refreshes all your symlinks. you should rarely/never need to do this yourself. this command takes its name from `rbenv rehash`, but since Haskell is a compiled language, `rehash` has an entirely different purpose.

`hsvm init` prints out several lines of bash/zsh which, when executed, set up your hsvm environment. you should put `eval "$(hsvm init)"` in your .bashrc or .zshrc.

`hsvm completions` lists all possible completions for a command. you should also rarely need to use this yourself.

`hsvm --version` prints out the current hsvm version.
