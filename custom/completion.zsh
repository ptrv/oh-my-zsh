zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:*:*:*' menu yes select

if [ -s "$ZSH_CUSTOM/pandoc-completion/pandoc-completion.bash" ]
then
    # echo "pandoc comp"
    autoload bashcompinit
    bashcompinit
    source "$ZSH_CUSTOM/pandoc-completion/pandoc-completion.bash"
fi
