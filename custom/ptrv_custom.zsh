################################################
# appereance
################################################

export CLICOLOR=1
export LS_COLORS='di=1;34:ln=35:so=32:pi=1;33:ex=32:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

################################################
# completion
################################################

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*:*:*:*:*' menu yes select
zstyle ':completion:*:*:*:*:*' select

if [ -s "$ZSH_CUSTOM/pandoc-completion/pandoc-completion.bash" ]
then
    # echo "pandoc comp"
    autoload bashcompinit
    bashcompinit
    source "$ZSH_CUSTOM/pandoc-completion/pandoc-completion.bash"
fi

################################################
# misc
################################################

REPORTTIME=10 # Show elapsed time if command took more than X seconds

################################################
#functions
################################################

# autoload all custom functions
autoload -U $ZSH/custom/functions/*(:t)
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    autoload -U $ZSH/custom/linux/functions/*(:t)
elif [[ "$OSTYPE" == "darwin"* ]]; then
    autoload -U $ZSH/custom/osx/functions/*(:t)
fi

################################################
# load all other config files
################################################

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    source $ZSH/custom/linux/env_linux.zsh
    source $ZSH/custom/linux/aliases_linux.zsh
    source $ZSH/custom/linux/aliases2_linux.zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source $ZSH/custom/osx/env_osx.zsh
    source $ZSH/custom/linux/aliases_osx.zsh
fi
