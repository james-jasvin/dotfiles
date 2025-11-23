# History settings.
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
export HISTSIZE=50000       # History lines stored in mememory.
export SAVEHIST=50000       # History lines stored on disk.
setopt INC_APPEND_HISTORY   # Immediately append commands to history file.
setopt HIST_IGNORE_ALL_DUPS # Never add duplicate entries.
setopt HIST_IGNORE_SPACE    # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS   # Remove unnecessary blank lines.

# Required for fzf tab completion to function
autoload -U compinit; compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

ZSH_PLUGINS_DIR="$ZDOTDIR/plugins"
# zsh, fzf, fzf-tab integration config
source "${ZSH_PLUGINS_DIR}/fzf-tab/fzf-tab.plugin.zsh"

# zsh-autosuggestions for auto-complete
source "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"

zstyle ":completion:*" menu select=2
zstyle ":completion:*" auto-description "specify: %d"
zstyle ":completion:*" completer _expand _complete _correct _approximate
zstyle ":completion:*" format "Completing %d"
zstyle ":completion:*" group-name ""

zstyle ':fzf-tab:*' use-fzf-default-opts yes

# For all cd commands, the preview window should show the output of ls command on the selected directory
zstyle ':fzf-tab:complete:cd:*' fzf-preview "ls --color=always \${realpath}"

eval "$(starship init zsh)"

# Enable ctrl + arrow and ctrl + backspace shortcuts for zsh shell
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word

# Add zsh aliases
[[ -f "$ZDOTDIR/.aliases" ]] && source "$ZDOTDIR/.aliases"
[[ -f "$ZDOTDIR/.internal-aliases" ]] && source "$ZDOTDIR/.internal-aliases"

# Add zsh functions
[[ -f "$ZDOTDIR/.functions" ]] && source "$ZDOTDIR/.functions"
