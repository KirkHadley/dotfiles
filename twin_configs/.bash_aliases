alias tmux="TERM=screen-256color-bce tmux"
alias tma="tmux attach-session -t"
alias tmrn="tmux new -s"
alias tml="tmux list-sessions"
alias tmk="tmux kill-session -t"
alias nv='nvim'
alias vim='nvim'
alias ls='ls -G'
alias dev='kubectl config use-context arn:aws:eks:us-west-2:575768168724:cluster/usdev-kube'
alias stg='kubectl config use-context arn:aws:eks:ap-south-1:575768168724:cluster/mbstg-kube'
alias prd='kubectl config use-context arn:aws:eks:ap-south-1:575768168724:cluster/mbprd-kube'
alias cat='bat'
alias tkillall='tmk i && tmk j && tmk m && tmk s && tmk w1 && tmk w2'
alias tkillremote='tmk m && tmk s && tmk w1 && tmk w2'
alias startsessions='zsh ~/start_sessions.zsh'
