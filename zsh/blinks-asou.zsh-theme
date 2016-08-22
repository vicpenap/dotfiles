# https://github.com/blinks zsh theme

function _prompt_char() {
  echo ''
  #if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    #echo "%{%F{blue}%}±%{%f%k%b%}"
  #else
    #echo ''
  #fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{%b%F{yellow}%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%b%F{yellow}%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%F{green}%}%n %{%F{white}%}%~$(git_prompt_info) %{%K{black}%}%E%{%f%k%b%} %{%K{black}%}%{%K{black}%}%#%{%f%k%b%} %F{white}'

RPROMPT='%{%F{gray}%}%*%{%F{white}%}'
