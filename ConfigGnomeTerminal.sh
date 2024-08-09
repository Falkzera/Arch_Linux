# Guia de configuração do terminal gnome para Arch Linux
# Baseado nas configurações do Luiz Otávio: https://gist.github.com/luizomf/688c8a48fe007829c120818138ac2317

## 1. Instale e configue Zsh

# Instalar Zsh
sudo pacman -S zsh

# Mudar o Shell padrão para Zsh
chsh -s /bin/zsh

# Reinicie o terminal ou faça login novamente para usar o Zsh
zsh

# 2. Instalar o Oh-My-Zsh
# Execute o script de instalação do Oh-My-Zsh:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 3. Instalar o Spaceship Prompt
# Clone o repositório do Spaceship Prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt" --depth=1

# Crie um link simbólico para o arquivo spaceship.zsh-theme
ln -s "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"

# Edite o arquivo ~/.zshrc para usar o tema Spaceship: pode usar o nano ou o code, eu prefiro o code
code ~/.zshrc

# Encontre a linha que define ZSH_THEME e altere-a para:
ZSH_THEME="spaceship"

# 4. Instalar o Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar o Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Edite o arquivo ~/.zshrc para incluir os plugins:
code ~/.zshrc

# Encontre a linha que define plugins e altere-a para:
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# 6. Instalar Fontes (Opcional)
# Instale o pacote ttf-nerd-fonts-symbols
mkdir -p ~/.fonts

# Clone o repositório do Nerd Fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf

# Atualize o cache de fontes
fc-cache -vf

# Reinicie o Sistema
sudo reboot

####################################################
# Instalando tema Drácula no terminal Gnome
sudo pacman -S dconf

# Clone o repositório do tema Drácula
git clone https://github.com/dracula/gnome-terminal

# Navegue até a pasta do tema Drácula
cd gnome-terminal

# Execute o script de instalação
./install.sh

############################################################
# Instalando o yay para instalar pacotes AUR
sudo pacman -S base-devel git

# Clone o repositório do yay
git clone https://aur.archlinux.org/yay-git.git

# Navegue até a pasta do yay
cd yay-git

# Construa e instale
makepkg -si

############################################################
# Instalando as fontes que utilizo e recomendo: JetBrains Mono

# 1. Instalando JetBrains Mono
yay -S ttf-jetbrains-mono

# Atualize o cache de fontes
fc-cache -fv

# Reinicie o sistema e mude no terminal a fonte para JetBrains Mono em preferências.
sudo reboot










