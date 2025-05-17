#
# /etc/bash.bashrc
#
alias vi='vim'
alias java8='/usr/lib/jvm/java-8-openjdk/bin/java'
alias java11='/usr/lib/jvm/java-11-openjdk/bin/java'
alias java17='/usr/lib/jvm/java-17-openjdk/bin/java'
alias java21='/usr/lib/jvm/java-21-openjdk/bin/java'


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
