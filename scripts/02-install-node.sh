#!/bin/bash

echo "=== Installerer Node.js ==="

# Legg til NodeSource repository
echo "Legger til NodeSource repository..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# Installer Node.js
echo "Installerer Node.js LTS..."
sudo apt install -y nodejs

# Verifiser installasjon
echo ""
echo "Node.js versjon:"
node --version
echo "npm versjon:"
npm --version

echo "=== Node.js installasjon fullført ==="
