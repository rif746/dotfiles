autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '?'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git*' formats "%F{#8be9fd} %f%k%K{#8be9fd}%F{#282a36}  %b%u%c %f%k"
zstyle ':vcs_info:git*' actionformats "%F{#8be9fd} %f%k%K{#8be9fd}%F{#282a36}  %b|%a %u %c %f%k"

precmd() {
	vcs_info
	if [ -n "$VIRTUAL_ENV" ]; then
		VENV="%F{#bd93f9}  %f%K{#bd93f9}%F{#282a36}  ${VIRTUAL_ENV:t}%f %k%K{#bd93f9}"
	else
		VENV=""
	fi
}

PROMPT='%B%K{#44475a}%F{#50fa7b}   %b%k%K{#bd93f9}%F{#44475a}  %f%k'
PROMPT+='%F{#282a36}%K{#bd93f9}%c %k%f%F{#bd93f9}  %b'
RPROMPT='%B%F{#f8f8f2}${VENV}%f${vcs_info_msg_0_}%b'

export VIRTUAL_ENV_DISABLE_PROMPT=1
