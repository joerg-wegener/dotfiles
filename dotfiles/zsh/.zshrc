# farben aktivieren
autoload -U colors && colors

# Prompt‑Substitution aktivieren
setopt prompt_subst

for f in ~/.config/zshrc/*; do
    if [ ! -d $f ]; then
        [[ -f $f ]] && source $f
    fi
done

# Git branch and status
git_prompt() {
  # Nur ausführen, wenn wir in einem Git‑Arbeits‑Tree sind
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    # aktueller Branch (oder detached HEAD)
    local branch
    branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null ||
            git rev-parse --short HEAD 2>/dev/null)

    # gibt es nicht‑committete Änderungen?
    local dirty
    dirty=$(git status --porcelain 2>/dev/null)

    # Ausgabe:
    #   (branch)            – sauber
    #   (branch) %F{yellow}x%f   – dirty
    if [[ -n $dirty ]]; then
      echo "%F{magenta}(${branch})%f %F{yellow}x%f"
    else
      echo "%F{magenta}(${branch})%f"
    fi
  fi
}

# Exit status indicator
exit_status() {
  echo "%(?.%F{green}.%F{red}%f)"
}

# Prompt
PROMPT='$(exit_status) %F{cyan}%1d%f$(git_prompt) '
