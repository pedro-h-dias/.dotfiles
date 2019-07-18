# .dotfiles

##### Trying to reduce the time it takes to get a new machine working.

---

Just follow the list below to make sure we cover everything in a new installation.

The distro I'm using right now is Manjaro.

## Installation steps
1. Install system

   + Enable Pacman, AUR

   + Remove GRUB delay
   
   To remove grub start delay, edit `/etc/default/grub` so that `GRUB_TIMEOUT=0`

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

3. Setup allacrity
   First, we will need to install some dependencies:

   ```sh
   pacman -S cmake freetype2 fontconfig pkg-config make
   ```

   Then, in order to build

   + Color scheme

2. Setup vim

3. Setup i3 configs
   + Default workspaces

4. Setup keyboard config

5. Setup Polybar and wallpaper

8. Setup working environment
   + Clone repos
   + DBeaver
   + psql

6. Setup rust environment
   + rustc
   + rustfmt

7. Setup python environment

8. Setup markdown environment

9. Setup hacking environment
   + Networktools
   + Wireshark

10. Setup VMs
   + Kali
   + Protostar
   + Windows

11. Install some useful applications
   + Spotify
   + Slack
   + Chrome-dev
   + Veracrypt

12. Install games
   + Minecraft
      + Remember to use java 8

13. Future projects
   + Backup system
   + LaTeX
   + Fonts
