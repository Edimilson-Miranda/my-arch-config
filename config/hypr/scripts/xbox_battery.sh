#!/bin/bash

# Inicializa a variável que armazenará o nível da bateria
battery_info=""

# Procurar o dispositivo Xbox entre os dispositivos listados no upower
battery_info=$(upower -e | grep 'device' | while read device; do
  # Verifica se o dispositivo é um controle Xbox
  if upower -i $device | grep -q 'Xbox'; then
    # Obter o nível de bateria do controle Xbox
    battery_level=$(upower -i $device | grep -i "percentage" | awk '{print $2}')
    echo $battery_level
   
    return 0  # Saída antecipada se encontrar o controle
  fi
done)

# Verifica se foi encontrado o controle e se o nível de bateria foi atribuído
if [[ -n "$battery_info" ]]; then
  echo "$battery_info"
else
  echo ""
fi

