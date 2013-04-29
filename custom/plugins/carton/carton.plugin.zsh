function _carton_commands() {
    local ret=1 state
    _arguments \
        '(--dev)--dev[Use if project is for package development]' \
        ':subcommand:->subcommand' && ret=0

    case $state in
        subcommand)
            subcommands=(
                "init:Create a file called 'Carton' in your project root and specify dependencies"
                "install:Install all dependencies"
                "update:Update all packages"
                "list:List all dependencies"
            )
            _describe -t subcommands 'carton subcommands' subcommands && ret=0
    esac

    case "$words[1]" in
        init)
            _arguments ;;
    esac

    return ret
}

compdef _carton_commands carton

alias cau="carton update"
