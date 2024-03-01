# TERM
$env.TERM = 'xterm-256color'

# Set PATH
$env.PATH = ($env.PATH | split row (char esep))
$env.PATH = ($env.PATH | append "/home/richard.wang/go/bin")
$env.PATH = ($env.PATH | append "/home/richard.wang/.deno/bin")
$env.PATH = ($env.PATH | append "/home/richard.wang/.go/bin")

# Aliases
alias ll = ls -l
alias vi = nvim
alias vim = nvim

# Prompt
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "
$env.PROMPT_COMMAND_RIGHT = ''

# $env.STARSHIP_SHELL = "nu"
# $env.STARSHIP_SESSION_KEY = (random chars -l 16)
# $env.PROMPT_COMMAND = { ^/usr/local/bin/starship prompt --cmd-duration $env.CMD_DURATION_MS }

$env.EDITOR = "nvim"

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
$env.NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
$env.NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

