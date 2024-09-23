# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# Tema do Zsh configurado para o Spaceship
ZSH_THEME="spaceship"

plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Set-up icons for files/folders in terminal using eza (alternative to ls)
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Configuração do tema Spaceship
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps
  user          # Username section
  host          # Hostname section
  dir           # Current directory
  git           # Git section (git_branch + git_status)
  node          # Node.js version
  docker        # Docker section
  python        # Python section
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Personalização do Spaceship
SPACESHIP_DIR_TRUNC=2
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Spaceship Prompt custom configuration
SPACESHIP_CHAR_SYMBOL="❯"  # Define o símbolo do prompt
SPACESHIP_USER_SHOW=always  # Mostra o nome de usuário sempre
SPACESHIP_PROMPT_ADD_NEWLINE=false  # Evita nova linha após cada comando
SPACESHIP_PROMPT_SYMBOLS_SHOW=true  # Ativa os ícones no prompt

# # Ativar ícones para Git, Node, Python etc.
# SPACESHIP_GIT_SYMBOL=""
# SPACESHIP_PYTHON_SYMBOL="🐍"



source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
