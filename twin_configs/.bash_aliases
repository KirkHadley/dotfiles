alias tma="tmux attach-session -t"
alias tmrn="tmux new -s"
alias tml="tmux list-sessions"
alias tmk="tmux kill-session -t"
alias nvim="/home/ubuntu/nvim.appimage.1"
alias nv='nvim'
alias vim='nvim'
alias vi='nvim'
alias run-flask='FLASK_APP=/home/ubuntu/kirk/ltp/ltp/prediction_service/app.py FLASK_ENV=development flask run --port=5001 --host=0.0.0.0'
alias cat='bat'
alias submit_jobs='. /home/ubuntu/submit_jobs.sh'
alias repos='pachctl list repo'
alias pipes='pachctl list pipeline'
alias tkillall='tmk i && tmk j && tmk m && tmk s && tmk w1 && tmk w2'
alias tkillremote='tmk m && tmk s && tmk w1 && tmk w2'
alias startsessions='zsh ~/start_sessions.zsh'
alias restartremote='tkillremote && startsessions'
