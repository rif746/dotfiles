export WORDCHARS='*?_-.[]~=&;!#%^(){}<>'

function gitremoteurl() {
	echo -n "username: "
	read user
	echo -n "repository: "
	read repo
	echo -n "upstream: "
	read upstream
	echo -n "key: "
	read -s key
	git remote set-url $upstream https://$user:$key@github.com/$user/$repo
}

# === ALIAS ===
alias gi='git init'
alias gra='git remote add'
alias gru='gitremoteurl'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias v='nvim'
alias install='sudo pacman -S'
alias upgrade='sudo pacman -Syyu'
alias remove='sudo pacman -Rsnc'

