# Dotfiles

Min personlige Linux-konfigurasjon for læring og utvikling.

## Status
- Startet: 2. februar 2026

Jeg planlegger å bygge stein for stein, og dokumenterer prosessen på [nettsiden min](https://www.michaelhelgesen.no)

## Plan
Se `dokumenter/plan.md` for planlagte implementeringer.

## Struktur
- `bash/` - Bash-konfigurasjon
- `scripts/` - Installasjonsscripts for nye maskiner
- `docs/` - Planleggingsdokumenter
- (mer kommer)

## Bruk
Kommer.

```bash
git clone https://github.com/mikke/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Installer grunnpakker først
sudo ./scripts/01-base-packages.sh

# Sett opp bash
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
source ~/.bashrc
# Installasjonsinstruksjoner følger
```

### Stegvis installasjon
Se `scripts/README.md` for individuelle installasjonsscripts.
