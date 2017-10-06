alias reload!='. ~/.zshrc'

# disable autocorrect and run as admin
alias mtr="nocorrect sudo mtr"

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -al --color"
  alias la='gls -A --color'
fi

# pipe keys to the clipboard
alias pubkey="more ~/.ssh/keys/personal.pub | pbcopy | echo '=> Personal public key copied to clipboard'"
alias pubkeyse="more ~/.ssh/keys/studioemma.pub | pbcopy | echo '=> Studio Emma public key copied to clipboard'"

# clear the DNS cache
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo 'cache cleared';"

# empty the trash
alias ivago="sudo rm -rf ~/.Trash/*"

# add Symfony app/console alias
alias pa="php app/console"

# alias tree
alias t="tree -L 1 -l"
alias tt="tree -L 2 -l"
alias ttt="tree -L 3 -l"

# short weather info
alias weather="curl -s wttr.in | sed -n "1,7p""

# proxy
alias proxy-on='ssh -fN web02'
alias proxy-check='ssh -O check web02'
alias proxy-off='ssh -O exit web02'
