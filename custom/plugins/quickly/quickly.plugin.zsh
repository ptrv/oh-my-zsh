function _quickly_commands() {
    local ret=1 state
    _arguments ':subcommand:->subcommand' && ret=0

    case $state in
      subcommand)
        subcommands=(
          "new"
          "edit"
          "design"
          "save"
          "debug"
          "share"
          "package"
        )
        _describe -t subcommands 'quickly subcommands' subcommands && ret=0
    esac

    return ret
}

compdef _quickly_commands quickly
