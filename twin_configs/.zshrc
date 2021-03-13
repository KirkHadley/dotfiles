# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export HOME="/home/ubuntu"
# Path to your oh-my-zsh installation.
export ZSH="/home/ubuntu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-iterm-touchbar
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
source ~/.fzf.zsh

function virtualenv_info {
 [ $CONDA_DEFAULT_ENV ] && echo `basename $CONDA_DEFAULT_ENV`
}
. /home/ubuntu/anaconda3/etc/profile.d/conda.sh  # commented out by conda initialize



function pipejobs(){
  pachctl list job --pipeline="$1"
}

function pipelogs(){
  pachctl logs --pipeline="$1"
}

function updatepipe(){
  pachctl update pipeline -f "$1"
}

# conda activate newenv  # commented out by conda initialize
conda config --set changeps1 false
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  conda         # conda virtualenv section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
  )
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
# SPACESHIP_TIME_SUFFIX=" ("
SPACESHIP_CONDA_PREFIX="("
SPACESHIP_CONDA_SUFFIX=") "
SPACESHIP_USER_SUFFIX=""
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_USER_PREFIX=""
SPACESHIP_HOST_SUFFIX=""
SPACESHIP_DIR_PREFIX=":"
SPACESHIP_DIR_TRUNC=2
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_GIT_STATUS_STASHED=🌰
SPACESHIP_GIT_STATUS_UNTRACKED=❓
SPACESHIP_GIT_STATUS_ADDED=💯
SPACESHIP_GIT_STATUS_AHEAD=➡️
SPACESHIP_GIT_STATUS_BEHIND=⬅️
#
# PROMPT="%{$fg[white]%}($(virtualenv_info)) %{$FG[201]%}%m ${PROMPT}"
function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}


# if [ ! -d /mimic_ecg1/anaconda3 ]; then
#   echo "mounting ecg1"
#   sudo mount /dev/nvme1n1 /mimic_ecg1
#   echo "restarting docker to use correct disk"
#   sudo service docker restart
#   # tmux new-session -d -s $session 'jupyter notebook --no-browser'
# else
#   echo "directory exists, assuming disk is mounted"
# fi
export TFHUB_CACHE_DIR=$HOME/.cache/tfhub_modules

function dexec(){
  docker exec -it "$1" bash
}

export MLFLOW_TRACKING_URI=http://18.207.229.12:5001
export PATH="/home/ubuntu/sonar-scanner-3.3.0.1492-linux/bin:$PATH"
export PATH=~/npm-global/bin:$PATH
export PATH=$HOME/bat-v0.17.1-x86_64-unknown-linux-gnu:$HOME/bin:$PATH
. /home/ubuntu/start_sessions.zsh

export TRAINS_FILE_HOST="http://$(dig +short myip.opendns.com @resolver1.opendns.com):8081"
export TRAINS_WEB_HOST="http://$(dig +short myip.opendns.com @resolver1.opendns.com):8080"
export TRAINS_API_HOST="http://$(dig +short myip.opendns.com @resolver1.opendns.com):8008"
export TERM="xterm-256color"
startdir=$PWD
cd /home/ubuntu/anaconda3/envs/foodprint/bin && source ./activate /home/ubuntu/anaconda3/envs/foodprint && conda deactivate && conda activate newenv && cd $startdir
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/ubuntu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/ubuntu/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/ubuntu/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/ubuntu/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

