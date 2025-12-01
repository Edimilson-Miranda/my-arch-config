#!/bin/bash
jamesdsp &
sleep 0.5  # Dá um tempo para o firefox iniciar
hyprctl dispatch minimze $(hyprctl clients | grep jamesdsp | awk '{print $1}')  # Minimiza o firefox

