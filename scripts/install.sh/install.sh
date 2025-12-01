#!/bin/bash
echo "Instalando Hyprland e configurações..."
sudo pacman -S --needed hyprland waybar rofi noctalia # Ajuste para sua distro
cp -r config/* ~/.config/
echo "Instalação concluída! Reinicie a sessão."   
