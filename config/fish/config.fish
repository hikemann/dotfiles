if status is-interactive
# Commands to run in interactive sessions can go here
end

starship init fish | source

function fish_greeting
end

function vpn
    if ip link show awg > /dev/null 2>&1
        echo "Отключаем VPN..."
        if sudo WG_QUICK_USERSPACE_IMPLEMENTATION=amneziawg-go awg-quick down /home/tri/Documents/Amnezia/awg.conf > /dev/null 2>&1
            echo "✓ VPN disconnected successfully"
        else
            echo "✗ Error disconnecting VPN"
        end
    else
        echo "Включаем VPN..."
        if sudo WG_QUICK_USERSPACE_IMPLEMENTATION=amneziawg-go awg-quick up /home/tri/Documents/Amnezia/awg.conf > /dev/null 2>&1
            echo "✓ VPN connected successfully"
        else
            echo "✗ Error connecting VPN"
        end
    end
end

alias packages="sudo micro /etc/nixos/packages.nix"
alias config="sudo micro /etc/nixos/configuration.nix"
alias build="sudo nixos-rebuild switch --flake /etc/nixos#ceo"

alias m="micro"
alias sm="sudo micro"
alias ff="fastfetch"
alias cc="clear"
