for f in ~/.config/zshrc/*; do
    if [ ! -d $f ]; then
        [[ -f $f ]] && source $f
    fi
done

# Git branch and status
git_prompt() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
        local status=$(git status --porcelain 2>/dev/null)
        
        if [ -n "$status" ]; then
            echo " (%F{yellow}${branch}%f %F{yellow}✕%f)"
        else
            echo " (%F{blue}${branch}%f)"
        fi
    fi
}

# Exit status indicator
exit_status() {
    if [ $? -eq 0 ]; then
        echo "%F{green}→%f"
    else
        echo "%F{red}✕%f"
    fi
}

# Prompt
PROMPT='$(exit_status) %F{cyan}%1d%f$(git_prompt) '
