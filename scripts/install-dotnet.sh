#!/usr/bin/env bash
set -e

echo "Installerer avhengigheter..."
sudo apt install -y libicu-dev

echo "Installerer .NET SDK..."

curl -sSL https://dot.net/v1/dotnet-install.sh -o /tmp/dotnet-install.sh
chmod +x /tmp/dotnet-install.sh
/tmp/dotnet-install.sh --channel LTS

echo ""
echo "dotnet versjon:"
dotnet --version

echo "=== dotnet installasjon fullført ==="
