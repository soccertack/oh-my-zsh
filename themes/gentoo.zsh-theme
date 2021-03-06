function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

EXP_NO=`uname -a | awk '{print $2}' | cut -d. -f2`

PROMPT_COLOR=214
GIT_COLOR=147
PROMPT='%F{$PROMPT_COLOR}[%m ${EXP_NO} %~]%f $(git_prompt_info)
%F{$PROMPT_COLOR}%#%f '
RPROMPT='%{$fg_no_bold[cyan]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{$GIT_COLOR}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{$GIT_COLOR})%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[green]%}↪"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}!!!!"
