# clean-modules-aliases
Script that gives you aliases for cleaning node_modules, bower directories and
corresponding cache.

## How to run the script
You will need to run this script only once - it will add `clean` and `reinst`
aliases to your _.bashrc_ or _.bash_profile_ so you could execute this commands
anytime and anywhere. To run the script use the next steps:

1. `git clone https://github.com/Marketionist/clean-modules-aliases.git`
1. `cd clean-modules-aliases/`
1. `bash add-aliases.sh`

If you are getting "=> Files .bashrc and .bash_profile are missing, create one
of them to add aliases" - you can create one of this files by running
`touch ~/.bashrc` or `touch ~/.bash_profile`.

If you want to see what is inside this files - you can run `open -t ~/.bashrc`
or `open -t ~/.bash_profile`.

That's it! Now you have 2 new commands that can be used all over your system.

## How to use commands

Just run in your terminal/command line:

- `clean` to clean node_modules, bower directories and corresponding cache
- `reinst` to clean node_modules, bower directories and corresponding cache +
reinstall node and bower modules/packages

## Thanks

If this script was helpful for you, please give it a **Star** on github
(https://github.com/Marketionist/clean-modules-aliases)
