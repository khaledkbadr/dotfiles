# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/khaled/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(git kubectl fzf)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/share/nvm/init-nvm.sh

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# noefetch
neofetch
# fzf uses ripgrep & fd
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --glob '!*/{.git,node_modules}/**'"
export FZF_CTRL_T_COMMAND="rg --files --no-ignore-vcs --glob '!*/{.git,node_modules}/**'"
export FZF_ALT_C_COMMAND="fd --type d --no-ignore-vcs --exclude node_modules --exclude .git"
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=/home/khaled/go
export GOPRIVATE="github.com/MagalixTechnologies"
export GO111Module="auto"
alias vim=nvim
###################################### Linux ###########################################
alias code="code --disable-gpu"
###################################### Magalix ###########################################
alias magalix="cd ~/code/github.com/MagalixTechnologies"
alias playground="cd ~/code/playground"
alias opalogs="kubectl logs -f deploy/opa-advisor -c opa-advisor --namespace cluster-advisor"
alias advisorlogs="kubectl logs -f deploy/advisor-service -c advisor-service --namespace cluster-advisor"
alias batcherlogs="kubectl logs -f deploy/cluster-advisor-batcher -c cluster-advisor-batcher --namespace cluster-advisor"
alias apigwlogs="kubectl logs -f deploy/api-gateway -c api-gateway-glb --namespace magalix-api-gateway-glb"
alias recommendationslogs="kubectl logs -f deploy/recommendations-service -c recommendations-service --namespace cluster-advisor"
alias entitieslogs="kubectl logs -f deploy/entities-definitions -c entities-definitions  --namespace entities"
alias kafkacli="/home/khaled/Downloads/kafka_2.11-2.4.1/bin/kafka-console-consumer.sh --bootstrap-server  kafka.kafka.svc:9092  --from-beginning --topic "
alias kprod="gcloud container clusters get-credentials rgn-prod --zone us-central1-a --project prod-env-203121"
alias kdev="gcloud container clusters get-credentials dev --zone us-east1-b --project dev-env-203117"
alias cad="cadence --address cad-cadence-frontend.khaled-cadence.svc:7933"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/khaled/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/khaled/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/khaled/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/khaled/Downloads/google-cloud-sdk/completion.zsh.inc'; fi





fpath=($fpath "/home/khaled/.zfunctions")

