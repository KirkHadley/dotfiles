# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/frederickhadley/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/frederickhadley/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/frederickhadley/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/frederickhadley/.fzf/shell/key-bindings.zsh"

