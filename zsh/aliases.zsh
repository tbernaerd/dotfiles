alias reload!='. ~/.zshrc'

# disable autocorrect and run as admin
alias mtr="nocorrect sudo mtr"

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  #alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# pipe keys to the clipboard
alias pubkey="more ~/.ssh/keys/personal.pub | pbcopy | echo '=> Personal public key copied to clipboard'"
alias pubkeywijs="more ~/.ssh/keys/wijs.pub | pbcopy | echo '=> Wijs public key copied to clipboard'"

# clear the DNS cache
alias clearcache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo 'cache cleared';"

# you only live once so deploy to production
alias yolo="cap production deploy"

# I fucked up, so reset to git version
alias gotverdomme="git reset --hard"

# empty the trash
alias ivago="sudo rm -rf ~/.Trash/*"

# add Things alias
alias t="things"

# add Symfony app/console alias
alias pa="php app/console"

# alias tree
alias t="tree -L 1 -l"
alias tt="tree -L 2 -l"
