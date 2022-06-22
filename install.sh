#!/bin/sh


sudo pacman -Syu stow git curl wget 

sudo pacman -S --needed base-devel

if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay.git vendor/yay
	cd vendor/yay
	makepkg -si
	cd ../..
  rm -rf vendor
fi

yay -S neovim-nightly-bin zsh tmux fzf oh-my-zsh-git blueman bluez bluez-utils bat btop dunst gh htop input-remapper kitty lf lsd neofetch picom rofi starship termscp pipewire pipewire-alsa pipewire-pulse pipewire-jack advcpmv arandr asdf-vm aws-cli-v2-bin bitwarden-cli copyq cowsay cloc cups cups-pdf dbeaver docker dos2unix docker-compose fd ffmpeg-obs ffmpegthumbnailer find-cursor flameshot gdu git-annex github-cli google-chrome google-cloud-sdk gromit-mpx handbrake httpie inxi jq lightdm man-pages man-db mpv nerd-fonts-complete nitrogen nmap nordvpn-bin notion-app-enhanced noto-color-emoji-fontconfig noto-fonts noto-fonts-emoji nvidia-dkms nvidia-installer-dkms nvidia-prime nvidia-settings obs-studio okular optimus-manager-qt p7zip pdfmerger pinta postgresql postman-bin protontricks pulseaudio-qt qbittorent qpwgraph qt5ct qtile radeontop rar rclone redis rofi-emoji screenkey scrcpy seahorse speedtest-cli timeshift tldr trash-cli ueberzug waifu2x-ncnn-vulkan-git wine wine-mono winetricks wireplumber x11vnc xclip xcolor youtube-dl soundux

# TODO: seperate to different files
# TODO: vim lsp
