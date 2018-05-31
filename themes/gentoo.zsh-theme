function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

EXP_NO=`uname -a | awk '{print $2}' | cut -d. -f2`

PROMPT='%(!.%{$fg_no_bold[yellow]%}.%{$fg_bold[green]%})[%m ${EXP_NO} %{$fg_no_bold[yellow]%}%~] $(git_prompt_info)%{$fg[yellow]%}
%#%{$reset_color%} '
RPROMPT='%{$fg_no_bold[cyan]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%}) "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[green]%}↪"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}!!!!"
