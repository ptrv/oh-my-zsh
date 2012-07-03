function _quickly_commands() {
    local ret=1 state
    _arguments ':subcommand:->subcommand' && ret=0

    case $state in
      subcommand)
        subcommands=(
          "add"
          "commands"
          "configure"
          "create"
          "debug"
          "design"
          "edit"
          "getstarted"
          "help"
          "license"
          "package"
          "quickly"
          "release"
          "run"
          "save"
          "share"
          "submitubuntu"
          "test"
          "tutorial"
          "upgrade"
        )
        _describe -t subcommands 'quickly subcommands' subcommands && ret=0
    esac

    return ret
}

compdef _quickly_commands quickly
