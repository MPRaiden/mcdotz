if status is-interactive
    if test -f /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    end

fish_add_path $HOME/go/bin
fish_add_path $HOME/Library/Python/3.13/bin
fish_add_path $HOME/.local/bin
fish_add_path /opt/homebrew/opt/postgresql@16/bin

# fish_config theme choose "Catppuccin Macchiato"

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx GOOGLE_APPLICATION_CREDENTIALS "$HOME/terraform-keyfile.json"

alias ls 'ls -la --color'
alias v 'nvim'

export NODE_OPTIONS="--no-deprecation"

# Optional: Allow Ctrl-P/N to cycle history even in Insert mode
bind -M insert \cp up-or-search # ctrl+p for previous command
bind -M insert \cn down-or-search # ctrl+n for next command
bind -M insert \cc forward-char # ctrl+c for current suggestion
# ctrl+r for full interactive list of past commands

# Enable vi & blinking block cursor (both insert & normal mode)
fish_vi_key_bindings
set fish_cursor_insert block blink
set fish_cursor_normal block blink

# Initialize fzf and optimize with fd
if type -q fzf
    # 1. Use fd to find ONLY directories for a cleaner navigation experience
    # --hidden: find hidden dirs, --exclude .git: stay out of the rabbit hole
    set -gx FZF_ALT_C_COMMAND 'fd --type d --strip-cwd-prefix --hidden --exclude .git'
    
    # This ensures that even the default search prefers directories if you prefer
    set -gx FZF_DEFAULT_COMMAND 'fd --type d --strip-cwd-prefix --hidden --exclude .git'

    # 2. Initialize
    fzf --fish | source

    # 3. Custom Ctrl+F to JUMP to a directory
    # We use fzf-cd-widget so that pressing Enter actually 'cd's you there
    bind \cf fzf-cd-widget
    bind -M insert \cf fzf-cd-widget
end

# Remove everything from right prompt
set --universal tide_right_prompt_items

set fzf_preview_dir_cmd ls -la --color

if test -f "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
    source "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
end
end
