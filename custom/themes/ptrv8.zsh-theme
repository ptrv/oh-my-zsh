PROMPT=$'%{${fg_bold[cyan]}%}(%{${fg_bold[blue]}%}%30<..<%~%{${fg_bold[cyan]}%}) %{${fg_bold[cyan]}%}%#%b %{$reset_color%}'
RPS1='%{${fg_bold[grey]}%}$($ZSH_CUSTOM/vcprompt/bin/vcprompt -f "[%n:%b%m%u %r]")%{$reset_color%}'
