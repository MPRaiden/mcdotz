if status is-interactive
    function fish_right_prompt
        date "+%a %b %d %I:%M %p"
    end

    if test -f /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    end

fish_add_path $HOME/go/bin
fish_add_path $HOME/Library/Python/3.13/bin
fish_add_path $HOME/.local/bin
fish_add_path /opt/homebrew/opt/postgresql@16/bin

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx GOOGLE_APPLICATION_CREDENTIALS "$HOME/terraform-keyfile.json"

alias ls 'ls -la --color'
alias v 'nvim'

    # Keep git branch and dirty state visible in both system appearances.
    set -l apple_interface_style (defaults read -globalDomain AppleInterfaceStyle 2>/dev/null)
    if string match -q 'Dark' -- "$apple_interface_style"
        set -g fish_color_normal e5e9f0
        set -g fish_color_command 88c0d0
        set -g fish_color_param d8dee9
        set -g fish_color_redirection e5e9f0
        set -g fish_color_keyword b48ead
        set -g fish_color_option b48ead
        set -g fish_color_operator 8fbcbb
        set -g fish_color_quote ebcb8b
        set -g fish_color_comment 6e778a
        set -g fish_color_autosuggestion 6e778a
        set -g fish_color_selection --background=4c566a
        set -g fish_color_search_match --background=4c566a

        set -g pure_color_git_branch a7b1c2
        set -g pure_color_git_dirty d4b16a
    else
        set -g fish_color_normal 4e4945
        set -g fish_color_command 467fbe
        set -g fish_color_param 4e4945
        set -g fish_color_redirection 4e4945
        set -g fish_color_keyword 8576b0
        set -g fish_color_option 8576b0
        set -g fish_color_operator 7ea17a
        set -g fish_color_quote c6a45d
        set -g fish_color_comment 9a9086
        set -g fish_color_autosuggestion 9a9086
        set -g fish_color_selection --background=d8c2a7
        set -g fish_color_search_match --background=d8c2a7

        set -g pure_color_git_branch 6b655e
        set -g pure_color_git_dirty c6a45d
    end

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

set fzf_preview_dir_cmd ls -la --color

if test -f "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
    source "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
end
end
