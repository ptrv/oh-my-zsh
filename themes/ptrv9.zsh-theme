#!/usr/bin/env zsh

#PROMPT=$'%{\e[1;36m%}(%{\e[34m%}%30<..<%~%{\e[36m%}) %{\e[36m%}%#%b %{\e[0m%}'
#RPS1='%{${fg_bold[grey]}%}$(vcprompt -f "[%n:%b%m]")%{$reset_color%}'

# PROMPT=$'%{${fg_bold[cyan]}%}(%{${fg_bold[blue]}%}%30<..<%~%{${fg_bold[cyan]}%}) %{${fg_bold[cyan]}%}%#%b %{$reset_color%}'
# RPS1='%{${fg_bold[grey]}%}$(vcprompt -f "[%n:%b%m%u %r]")%{$reset_color%}'

PROMPT_PATH_MAX_LENGTH=30
PROMPT_DEFAULT_END=❯
PROMPT_ROOT_END=❯❯❯
PROMPT_SUCCESS_COLOR=$FG[071]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]

PROMPT="%(0?.%{$PROMPT_SUCCESS_COLOR%}.%{$PROMPT_FAILURE_COLOR%})${SSH_TTY:+[%n@%m]}%{$FX[bold]%}%$PROMPT_PATH_MAX_LENGTH<..<%~%(!.$PROMPT_ROOT_END.$PROMPT_DEFAULT_END)%{$FX[no-bold]%}%{$FX[reset]%} "
# RPS1='%{${fg_bold[grey]}%}$(vcprompt -f "[%n:%b%m%u %r]")%{$reset_color%}'
RPROMPT='%{$PROMPT_VCS_INFO_COLOR%}$(vcprompt -f "[%n:%b%m%u %r]")%{$FX[reset]%}'
