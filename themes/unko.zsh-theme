#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

PROMPT_SUCCESS_COLOR=$fg[blue]
PROMPT_FAILURE_COLOR=$fg[red]
GIT_DIRTY_COLOR=$fg[yellow]
GIT_PROMPT_INFO=$fg[green]

PROMPT='%{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%}$(git_prompt_info) $ '

#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$GIT_PROMPT_INFO%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_HAVE_STASH=" %{$fg[red]%}☃%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_HAVE_NO_STASH=""
