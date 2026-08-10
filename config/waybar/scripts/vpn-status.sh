#!/usr/bin/env bash

# Проверяем наличие интерфейса awg
if ip link show awg &> /dev/null; then
    # Если VPN включен
    echo '{"text": "", "alt": "connected", "tooltip": "AmneziaWG: Connected", "class": "connected"}'
else
    # Если VPN отключен
    echo '{"text": "", "alt": "disconnected", "tooltip": "AmneziaWG: Disconnected", "class": "disconnected"}'
fi
