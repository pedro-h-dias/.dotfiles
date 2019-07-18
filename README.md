# .dotfiles

##### Trying to reduce the time it takes to get a new machine working.

---

Just follow the list below to make sure we cover everything in a new installation.

The distro I'm using right now is Manjaro.

## Installation steps
1. Install system

  + Enable Pacman, AUR

  + Remove GRUB delay
  
  To remove grub start delay, edit `/etc/default/grub` so that `GRUB_TIMEOUT=0`.

2. Setup ssh-keys

   Make sure ssh and git are installed. 

   ```sh
   pacman -S ssh git
   ```

   Go to `~/.ssh/` and generate the key-pairs we are going to use.

   ```sh
   cd ~/.ssh/
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

   Then, setup a `config` file with as many hosts as you want:

  ```sh
  Host github.com
	HostName github.com
	User git
	IdentityFile ~/.ssh/github

  Host gitlab.com
	HostName gitlab.com
	User git
	IdentityFile ~/.ssh/gitlab

  ```

3. Setup vim

  For now, install [Pathogen](https://github.com/tpope/vim-pathogen).

  ```sh
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  ```

  Then, clone `/vim/vimrc` from and create the symlinks.

  The following plugins are being used so far:

  [auto-pairs](https://github.com/jiangmiao/auto-pairs), 
  [dbtext.vim](https://github.com/vim-scripts/dbext.vim), 
  [gruvbox](https://github.com/morhetz/gruvbox), 
  [lightline.vim](https://github.com/itchyny/lightline.vim), 
  [nerdtree](https://github.com/scrooloose/nerdtree), 
  [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin), 
  [rust.vim](https://github.com/rust-lang/rust.vim), 
  [vim-gitgutter](https://github.com/airblade/vim-gitgutter), 
  [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors), 
  [vim-surround](https://github.com/tpope/vim-surround), 
  [yaml-vim](https://github.com/mrk21/yaml-vim), 
  [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

4. Setup rust environment

  [rust-vim](https://github.com/ivanceras/rust-vim-setup)

  Install rust

  + rustc
  + rustfmt

5. Setup allacrity

  First, we will need to install some dependencies:

  ```sh
  pacman -S cmake freetype2 fontconfig pkg-config make
  ```

  Then, in order to build

  + Color scheme



6. Setup i3 configs

  + Default workspaces

7. Setup keyboard config

8. Setup Polybar and wallpaper

8. Setup working environment

  + Clone repos
  + DBeaver
  + psql

9. Setup python environment

10. Setup markdown environment

11. Setup hacking environment

  + Networktools
  + Wireshark

12. Setup VMs

  + Kali
  + Protostar
  + Windows

13. Install some useful applications

  + Spotify
  + Slack
  + Chrome-dev
  + Veracrypt

14. Install games

  + Minecraft
   + Remember to use java 8

15. Future projects
  + Backup system
  + Switch themes
  + LaTeX
  + Fonts
