# TERM
let-env TERM = 'xterm-256color'

# Set PATH
let-env PATH = ($env.PATH | append "/home/richard.wang/go/bin")
let-env PATH = ($env.PATH | append "/home/richard.wang/.deno/bin")

# Aliases
alias ll = ls -l

# Prompt
let-env PROMPT_INDICATOR = ""
let-env PROMPT_INDICATOR_VI_INSERT = ": "
let-env PROMPT_INDICATOR_VI_NORMAL = "〉"
let-env PROMPT_MULTILINE_INDICATOR = "::: "

let-env PROMPT_COMMAND = { oh-my-posh prompt print primary --config ~/.config/oh-my-posh/themes/theme.omp.json | str collect }
let-env PROMPT_COMMAND_RIGHT = ''

# let-env STARSHIP_SHELL = "nu"
# let-env STARSHIP_SESSION_KEY = (random chars -l 16)
# let-env PROMPT_COMMAND = { ^/usr/local/bin/starship prompt --cmd-duration $env.CMD_DURATION_MS }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
let-env ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
}

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

mkdir ~/.cache/starship
starship init nu | save ~/.cache/starship/init.nu

