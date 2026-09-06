#!/usr/bin/env bash
set -e

echo "Installerer Nvim..."

#!/usr/bin/env bash
set -e

echo "Installerer Neovim (nyeste stabile, via tarball)..."

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo mv /opt/nvim-linux-x86_64 /opt/nvim
rm nvim-linux-x86_64.tar.gz

echo ""
echo "Husk å legge til i PATH (f.eks. i .bashrc), FØR andre PATH-tillegg:"
echo '  export PATH="/opt/nvim/bin:$PATH"'

echo ""
echo "nvim versjon:"
nvim -v
echo "Husk å legge til i PATH (f.eks. i .bashrc), FØR andre PATH-tillegg:"
echo '  export PATH="/opt/nvim/bin:$PATH"'

echo "=== nvim-installasjon fullført ==="
