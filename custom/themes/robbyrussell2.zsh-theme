PROMPT='%{$fg_bold[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}
%{$fg_bold[red]%}➜ %{$reset_color%}'
# PROMPT='%{$fg_bold[cyan]%}%~ %{$fg_bold[yellow]%}$(git_prompt_info)%{$fg_bold[blue]%}
# %{$fg_bold[green]%}λ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
