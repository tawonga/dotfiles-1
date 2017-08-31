#compdef rustup

_rustup() {
    typeset -A opt_args
    local ret=1

    local context curcontext="$curcontext" state line
    _arguments -s -S -C \
"-v[Enable verbose output]" \
"--verbose[Enable verbose output]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup_commands" \
"*:: :->rustup" \
&& ret=0
    case $state in
    (rustup)
        curcontext="${curcontext%:*:*}:rustup-command-$words[1]:"
        case $line[1] in
            (show)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(install)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__install_commands" \
&& ret=0
;;
(uninstall)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__uninstall_commands" \
&& ret=0
;;
(update)
_arguments -s -S -C \
"--no-self-update[Don't perform self update when running the `rustup` command]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__update_commands" \
&& ret=0
;;
(default)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__default_commands" \
&& ret=0
;;
(toolchain)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain_commands" \
"*:: :->toolchain" \
&& ret=0
case $state in
    (toolchain)
        curcontext="${curcontext%:*:*}:rustup-toolchain-command-$words[1]:"
        case $line[1] in
            (list)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(update)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__install_commands" \
&& ret=0
;;
(add)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__install_commands" \
&& ret=0
;;
(install)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__install_commands" \
&& ret=0
;;
(remove)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__uninstall_commands" \
&& ret=0
;;
(uninstall)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__uninstall_commands" \
&& ret=0
;;
(link)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__toolchain__link_commands" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(target)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__target_commands" \
"*:: :->target" \
&& ret=0
case $state in
    (target)
        curcontext="${curcontext%:*:*}:rustup-target-command-$words[1]:"
        case $line[1] in
            (list)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(install)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__target__add_commands" \
&& ret=0
;;
(add)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__target__add_commands" \
&& ret=0
;;
(uninstall)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__target__remove_commands" \
&& ret=0
;;
(remove)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__target__remove_commands" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(component)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__component_commands" \
"*:: :->component" \
&& ret=0
case $state in
    (component)
        curcontext="${curcontext%:*:*}:rustup-component-command-$words[1]:"
        case $line[1] in
            (list)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(add)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"--target+[]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__component__add_commands" \
&& ret=0
;;
(remove)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"--target+[]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__component__remove_commands" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(override)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__override_commands" \
"*:: :->override" \
&& ret=0
case $state in
    (override)
        curcontext="${curcontext%:*:*}:rustup-override-command-$words[1]:"
        case $line[1] in
            (list)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(add)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__override__set_commands" \
&& ret=0
;;
(set)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__override__set_commands" \
&& ret=0
;;
(remove)
_arguments -s -S -C \
"--path+[Path to the directory]" \
"--nonexistent[Remove override toolchain for all nonexistent directories]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(unset)
_arguments -s -S -C \
"--path+[Path to the directory]" \
"--nonexistent[Remove override toolchain for all nonexistent directories]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(run)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__run_commands" \
&& ret=0
;;
(which)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__which_commands" \
&& ret=0
;;
(docs)
_arguments -s -S -C \
"--book[The Rust Programming Language book]" \
"--std[Standard library API documentation]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(doc)
_arguments -s -S -C \
"--book[The Rust Programming Language book]" \
"--std[Standard library API documentation]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(man)
_arguments -s -S -C \
"--toolchain+[Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__man_commands" \
&& ret=0
;;
(self)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__self_commands" \
"*:: :->self" \
&& ret=0
case $state in
    (self)
        curcontext="${curcontext%:*:*}:rustup-self-command-$words[1]:"
        case $line[1] in
            (update)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(uninstall)
_arguments -s -S -C \
"-y[]" \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(upgrade-data)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(telemetry)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__telemetry_commands" \
"*:: :->telemetry" \
&& ret=0
case $state in
    (telemetry)
        curcontext="${curcontext%:*:*}:rustup-telemetry-command-$words[1]:"
        case $line[1] in
            (enable)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(disable)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(analyze)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(set)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__set_commands" \
"*:: :->set" \
&& ret=0
case $state in
    (set)
        curcontext="${curcontext%:*:*}:rustup-set-command-$words[1]:"
        case $line[1] in
            (default-host)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__set__default-host_commands" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
;;
(completions)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
"1:: :_rustup__completions_commands" \
&& ret=0
;;
(help)
_arguments -s -S -C \
"-h[Prints help information]" \
"--help[Prints help information]" \
"-V[Prints version information]" \
"--version[Prints version information]" \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_rustup_commands] )) ||
_rustup_commands() {
    local commands; commands=(
        "show:Show the active and installed toolchains" \
"install:Update Rust toolchains" \
"uninstall:Uninstall Rust toolchains" \
"update:Update Rust toolchains and rustup" \
"default:Set the default toolchain" \
"toolchain:Modify or query the installed toolchains" \
"target:Modify a toolchain's supported targets" \
"component:Modify a toolchain's installed components" \
"override:Modify directory toolchain overrides" \
"run:Run a command with an environment configured for a given toolchain" \
"which:Display which binary will be run for a given command" \
"doc:Open the documentation for the current toolchain" \
"man:View the man page for a given command" \
"self:Modify the rustup installation" \
"telemetry:rustup telemetry commands" \
"set:Alter rustup settings" \
"completions:Generate completion scripts for your shell" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup commands' commands "$@"
}
(( $+functions[_rustup__add_commands] )) ||
_rustup__add_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup add commands' commands "$@"
}
(( $+functions[_rustup__component__add_commands] )) ||
_rustup__component__add_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup component add commands' commands "$@"
}
(( $+functions[_rustup__override__add_commands] )) ||
_rustup__override__add_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup override add commands' commands "$@"
}
(( $+functions[_rustup__target__add_commands] )) ||
_rustup__target__add_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup target add commands' commands "$@"
}
(( $+functions[_rustup__toolchain__add_commands] )) ||
_rustup__toolchain__add_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup toolchain add commands' commands "$@"
}
(( $+functions[_rustup__telemetry__analyze_commands] )) ||
_rustup__telemetry__analyze_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup telemetry analyze commands' commands "$@"
}
(( $+functions[_rustup__completions_commands] )) ||
_rustup__completions_commands() {
    local commands; commands=(
        "SHELL:" \
    )
    _describe -t commands 'rustup completions commands' commands "$@"
}
(( $+functions[_rustup__component_commands] )) ||
_rustup__component_commands() {
    local commands; commands=(
        "list:List installed and available components" \
"add:Add a component to a Rust toolchain" \
"remove:Remove a component from a Rust toolchain" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup component commands' commands "$@"
}
(( $+functions[_rustup__default_commands] )) ||
_rustup__default_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup default commands' commands "$@"
}
(( $+functions[_rustup__set__default-host_commands] )) ||
_rustup__set__default-host_commands() {
    local commands; commands=(
        "HOST_TRIPLE:" \
    )
    _describe -t commands 'rustup set default-host commands' commands "$@"
}
(( $+functions[_rustup__telemetry__disable_commands] )) ||
_rustup__telemetry__disable_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup telemetry disable commands' commands "$@"
}
(( $+functions[_rustup__doc_commands] )) ||
_rustup__doc_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup doc commands' commands "$@"
}
(( $+functions[_docs_commands] )) ||
_docs_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'docs commands' commands "$@"
}
(( $+functions[_rustup__docs_commands] )) ||
_rustup__docs_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup docs commands' commands "$@"
}
(( $+functions[_rustup__telemetry__enable_commands] )) ||
_rustup__telemetry__enable_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup telemetry enable commands' commands "$@"
}
(( $+functions[_rustup__component__help_commands] )) ||
_rustup__component__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup component help commands' commands "$@"
}
(( $+functions[_rustup__help_commands] )) ||
_rustup__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup help commands' commands "$@"
}
(( $+functions[_rustup__override__help_commands] )) ||
_rustup__override__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup override help commands' commands "$@"
}
(( $+functions[_rustup__self__help_commands] )) ||
_rustup__self__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup self help commands' commands "$@"
}
(( $+functions[_rustup__set__help_commands] )) ||
_rustup__set__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup set help commands' commands "$@"
}
(( $+functions[_rustup__target__help_commands] )) ||
_rustup__target__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup target help commands' commands "$@"
}
(( $+functions[_rustup__telemetry__help_commands] )) ||
_rustup__telemetry__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup telemetry help commands' commands "$@"
}
(( $+functions[_rustup__toolchain__help_commands] )) ||
_rustup__toolchain__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup toolchain help commands' commands "$@"
}
(( $+functions[_rustup__install_commands] )) ||
_rustup__install_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup install commands' commands "$@"
}
(( $+functions[_rustup__target__install_commands] )) ||
_rustup__target__install_commands() {
    local commands; commands=(
        "TARGET:" \
    )
    _describe -t commands 'rustup target install commands' commands "$@"
}
(( $+functions[_rustup__toolchain__install_commands] )) ||
_rustup__toolchain__install_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup toolchain install commands' commands "$@"
}
(( $+functions[_rustup__toolchain__link_commands] )) ||
_rustup__toolchain__link_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
"PATH:" \
    )
    _describe -t commands 'rustup toolchain link commands' commands "$@"
}
(( $+functions[_rustup__component__list_commands] )) ||
_rustup__component__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup component list commands' commands "$@"
}
(( $+functions[_rustup__override__list_commands] )) ||
_rustup__override__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup override list commands' commands "$@"
}
(( $+functions[_rustup__target__list_commands] )) ||
_rustup__target__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup target list commands' commands "$@"
}
(( $+functions[_rustup__toolchain__list_commands] )) ||
_rustup__toolchain__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup toolchain list commands' commands "$@"
}
(( $+functions[_rustup__man_commands] )) ||
_rustup__man_commands() {
    local commands; commands=(
        "COMMAND:" \
    )
    _describe -t commands 'rustup man commands' commands "$@"
}
(( $+functions[_rustup__override_commands] )) ||
_rustup__override_commands() {
    local commands; commands=(
        "list:List directory toolchain overrides" \
"set:Set the override toolchain for a directory" \
"unset:Remove the override toolchain for a directory" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup override commands' commands "$@"
}
(( $+functions[_rustup__component__remove_commands] )) ||
_rustup__component__remove_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup component remove commands' commands "$@"
}
(( $+functions[_rustup__override__remove_commands] )) ||
_rustup__override__remove_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup override remove commands' commands "$@"
}
(( $+functions[_rustup__remove_commands] )) ||
_rustup__remove_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup remove commands' commands "$@"
}
(( $+functions[_rustup__target__remove_commands] )) ||
_rustup__target__remove_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup target remove commands' commands "$@"
}
(( $+functions[_rustup__toolchain__remove_commands] )) ||
_rustup__toolchain__remove_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup toolchain remove commands' commands "$@"
}
(( $+functions[_rustup__run_commands] )) ||
_rustup__run_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
"COMMAND:" \
    )
    _describe -t commands 'rustup run commands' commands "$@"
}
(( $+functions[_rustup__self_commands] )) ||
_rustup__self_commands() {
    local commands; commands=(
        "update:Download and install updates to rustup" \
"uninstall:Uninstall rustup." \
"upgrade-data:Upgrade the internal data format." \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup self commands' commands "$@"
}
(( $+functions[_rustup__override__set_commands] )) ||
_rustup__override__set_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup override set commands' commands "$@"
}
(( $+functions[_rustup__set_commands] )) ||
_rustup__set_commands() {
    local commands; commands=(
        "default-host:The triple used to identify toolchains when not specified" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup set commands' commands "$@"
}
(( $+functions[_rustup__show_commands] )) ||
_rustup__show_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup show commands' commands "$@"
}
(( $+functions[_rustup__target_commands] )) ||
_rustup__target_commands() {
    local commands; commands=(
        "list:List installed and available targets" \
"add:Add a target to a Rust toolchain" \
"remove:Remove a target from a Rust toolchain" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup target commands' commands "$@"
}
(( $+functions[_rustup__telemetry_commands] )) ||
_rustup__telemetry_commands() {
    local commands; commands=(
        "enable:Enable rustup telemetry" \
"disable:Disable rustup telemetry" \
"analyze:Analyze stored telemetry" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup telemetry commands' commands "$@"
}
(( $+functions[_rustup__toolchain_commands] )) ||
_rustup__toolchain_commands() {
    local commands; commands=(
        "list:List installed toolchains" \
"install:Install or update a given toolchain" \
"uninstall:Uninstall a toolchain" \
"link:Create a custom toolchain by symlinking to a directory" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rustup toolchain commands' commands "$@"
}
(( $+functions[_rustup__self__uninstall_commands] )) ||
_rustup__self__uninstall_commands() {
    local commands; commands=(
        "TARGET:" \
    )
    _describe -t commands 'rustup self uninstall commands' commands "$@"
}
(( $+functions[_rustup__target__uninstall_commands] )) ||
_rustup__target__uninstall_commands() {
    local commands; commands=(
        "TARGET:" \
    )
    _describe -t commands 'rustup target uninstall commands' commands "$@"
}
(( $+functions[_rustup__toolchain__uninstall_commands] )) ||
_rustup__toolchain__uninstall_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup toolchain uninstall commands' commands "$@"
}
(( $+functions[_rustup__uninstall_commands] )) ||
_rustup__uninstall_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup uninstall commands' commands "$@"
}
(( $+functions[_rustup__override__unset_commands] )) ||
_rustup__override__unset_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup override unset commands' commands "$@"
}
(( $+functions[_rustup__self__update_commands] )) ||
_rustup__self__update_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup self update commands' commands "$@"
}
(( $+functions[_rustup__toolchain__update_commands] )) ||
_rustup__toolchain__update_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup toolchain update commands' commands "$@"
}
(( $+functions[_rustup__update_commands] )) ||
_rustup__update_commands() {
    local commands; commands=(
        "TOOLCHAIN:Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`" \
    )
    _describe -t commands 'rustup update commands' commands "$@"
}
(( $+functions[_rustup__self__upgrade-data_commands] )) ||
_rustup__self__upgrade-data_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rustup self upgrade-data commands' commands "$@"
}
(( $+functions[_rustup__which_commands] )) ||
_rustup__which_commands() {
    local commands; commands=(
        "COMMAND:" \
    )
    _describe -t commands 'rustup which commands' commands "$@"
}

_rustup "$@"