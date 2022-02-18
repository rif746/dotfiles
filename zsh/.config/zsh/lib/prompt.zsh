autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '?'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git*' formats " ( %b%a%u%c) "
zstyle ':vcs_info:git*' actionformats "  %b|%a %u %c "

precmd() {
	vcs_info
	if [ -n "$VIRTUAL_ENV" ]; then
		VENV="  ${VIRTUAL_ENV:t} "
	else
		VENV=""
	fi
}

PROMPT='%B%K{#44475a}%F{#50fa7b}   %b%k%K{#bd93f9}%F{#44475a} %f%k'
PROMPT+='%F{#282a36}%K{#bd93f9}%B${VENV}${vcs_info_msg_0_}%b'
PROMPT+=' %B%c %b%k%f%F{#bd93f9}  %f'

export VIRTUAL_ENV_DISABLE_PROMPT=1
