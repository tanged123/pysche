# .bashrc additions for Pysche

# 1. FZF Setup (Fuzzy Finder)
if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --bash)"
    
    # Use fd instead of find (faster, ignores .git)
    export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# 2. Modern Replacements
if command -v eza >/dev/null 2>&1; then
    alias ls='eza'
    alias ll='eza -l --git'
    alias la='eza -la --git'
    alias tree='eza --tree'
fi

if command -v bat >/dev/null 2>&1; then
    alias cat='bat --style=plain'
fi

# 3. Direnv (Auto-loads environment)
if command -v direnv >/dev/null 2>&1; then
    eval "$(direnv hook bash)"
fi

# 4. Zoxide (Smarter cd)
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init bash)"
    alias cd='z'
fi

# 5. Lazygit
if command -v lazygit >/dev/null 2>&1; then
    alias lg='lazygit'
fi
