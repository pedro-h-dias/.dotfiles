# install zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install rust tools
cargo install exa bat procs

# TODO: configure nerd-fonts
# # install nerd-fonts
# mkdir -p ~/.local/share/fonts/

# cd /tmp
# wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Ubuntu.zip
# wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/UbuntuMono.zip

# unzip Ubuntu.zip -d ./Ubuntu
# cp ./Ubuntu/*.ttf ~/.local/share/fonts/

# unzip UbuntuMono.zip -d ./UbuntuMono
# cp UbuntuMono/*.ttf ~/.local/share/fonts/

# fc-cache -fv

# link .zshrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc