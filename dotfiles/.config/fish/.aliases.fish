#! /usr/bin/fish

# NOTE: this is not necessarily a dotfile, as you don't need it, just run it upon updating it

# for fish, just run this file after editing it:
# fish .aliases-fish

# NOTE: if you remove an alias from here, i think the function still remains
# functions --erase command # or -e

# notes:
# add -s flag to all alias -s commands, then run this file as a fish script
# alias -s -s <alias -sname> "command(s)" # or --save
# this will create functions (all commands are functions in fish)
# and they will automatically lazy-load
# otherwise, if you do it the bash/zsh way and throw it all in a file,
# it will load them all into the shell's memory (maybe that's the functionality without the -s flag)
# https://stackoverflow.com/questions/2762994/define-an-alias -s-in-fish-shell

# NOTE: don't use the name of an actual command, it won't override, it'll just execute twice!

# try cover all options: verbose and short

# fish commands
# TODO: what to do about commands that require input?
#alias -s unalias='functions --erase'

# basic shell signals
alias -s c='clear'
#alias -s c='clear' -x
#alias -s ca='clear'
alias -s q='exit'

# basic file system commands
# TODO: config these, just the ls commands
alias -s l='ls'
alias -s ll='ls -l' # long (no --long flag)
alias -s lla='ls -la'
alias -s la='ls -a' # --all

alias -s mv='mv -iv' # --interactive --verbose
alias -s cp='cp -iv'
alias -s cpr='cp -ivr' # --recursive
alias -s cpa='cp -iv --parents' # not the same as -p
alias -s mkdir='mkdir -pv'
alias -s rmdir='rmdir -v'

# man supplement
alias -s h='tldr'

# fuzzy search
# TODO: test these
#alias -s vf='nvim $(fzf)'
#alias -s cdt='cd $(find * -type d | fzf)'
#alias -s gct='git checkout $(git branch -r | fzf)'

# (f)ile 'n' directory navigator / explorer
alias -s f='lf' # also c+f binding

# contemporary replacements
# note: DO NOT replace the original commands, bash scripts need to execute them!
alias -s lt='exa --tree --git-ignore'
alias -s lat='exa --tree --all --git-ignore' # vs lta
alias -s llt='exa --tree --all --long --git-ignore' # vs llat, llta

# if debian (too difficult: https://unix.stackexchange.com/questions/6345/how-can-i-get-distribution-name-and-version-number-in-a-simple-shell-script)
#alias -s bat='batcat' # debian has a package named bat already, so it named it batcat, wtf
functions --erase bat # not going away for some reason...

alias -s ripgrep='rg' # rg is the actual command for the ripgrep package
#alias -s fd='fdfind' # package uses fd command on arch, fdfind on debian
#alias -s f='fdfind'
alias -s d='delta'

alias -s v='nvim' # control+v binding? alt+e for $EDITOR by default in fish
alias -s vim='nvim'
alias -s neovim='nvim'

alias -s e='doom run' # emacs

alias -s ai='tgpt' # openai's chatGPT
alias -s chatgpt='tgpt'

# git, ordered by git work-flow
alias -s gs='git status'
#alias -s gpl='git pull'
alias -s gpull='git pull'
alias -s gd='git diff'
alias -s gdh='git diff HEAD'
alias -s gaa='git add -A';
alias -s gca='git commit -a'
alias -s gcam='git commit -a -m "no message"'
#alias -s gp='git push'
alias -s gpush='git push'

# can just write small shell scripts this way, avoiding writing a function file (which mostly consists of crap generated by these aliases)
alias -s gfuckit 'git add -A; git commit -m "(> \'.\')>"; git push;'

#alias -s g?='git clone'
#alias -s gb='git branch'
#alias -s gf='git fetch'
#alias -s gs='git stash'
#alias -s gr='git rebase'
#alias -s gt='git log --graph --oneline --all'


# dev
alias -s hx='haxe'
alias -s rb='ruby'
alias -s cr='crystal'
# bash
# fish



# experimental
# TODO: test these
#alias -s cl='cloc . --exclude-dir=node_modules,.nuxt,build,.vscode,dist --exclude-lang=JSON'



