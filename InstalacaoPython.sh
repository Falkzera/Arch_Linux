# Instalando o Python no Arch Linux
# Atualize a lista de pacotes e o sistema
sudo pacman -Syu

# Instalar pacotes
sudo pacman -S git curl base-devel dkms perl wget
sudo pacman -S gcc make mysql-clients openssl zlib bzip2 readline sqlite llvm \
  ncurses xz tk libffi lzma python-openssl

# Configurar pyenv
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Instale o pyenv
yay -S pyenv

# Instale o Virutal pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# Adicione ao zsh
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Defina a versão instalada
pyenv install 3.12.4
pyenv global 3.12.4

# Recarregue o terminal
source ~/.zshrc


