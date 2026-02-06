#!/bin/bash
# 01-base-packages.sh
# Installer grunnleggende pakker som trengs på alle maskiner

set -e  # Stopp ved feil

echo "=== Installerer grunnleggende pakker ==="

# Sjekk om vi kjører som root/sudo
if [ "$EUID" -ne 0 ]; then 
    echo "Dette scriptet må kjøres med sudo"
    echo "Kjør: sudo ./01-base-packages.sh"
    exit 1
fi

# Oppdater system
echo "Oppdaterer pakkelister..."
apt update

# Grunnleggende verktøy
echo "Installerer grunnpakker..."
apt install -y \
    git \
    curl \
    wget \
    htop \
    tree \
    unzip \
    vim

echo ""
echo "✓ Grunnpakker installert"
echo ""
echo "Installerte pakker:"
echo "  - git: Versjonskontroll"
echo "  - curl/wget: Last ned filer"
echo "  - htop: Prosess-monitor"
echo "  - tree: Vis mappestruktur"
echo "  - unzip: Pakk ut zip-filer"
echo "  - vim: Teksteditor"
