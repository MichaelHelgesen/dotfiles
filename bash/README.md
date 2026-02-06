# Bash Configuration

Min personlige bash-konfigurasjon med aliaser, prompt og historikk-oppsett.

## Filer

- `.bashrc` - Hovedkonfigurasjon med aliaser og git-aware prompt

## Installasjon

### Ubuntu (laptop/VM):
```bash
# Lag symlink til .bashrc
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc

# Last inn på nytt
source ~/.bashrc
```

### Proxmox:
```bash
# Installer git først (hvis ikke installert):
apt update && apt install git

# Klon dotfiles:
cd /root
git clone https://github.com/mikke/dotfiles.git

# Lag symlink:
ln -sf /root/dotfiles/bash/.bashrc ~/.bashrc
source ~/.bashrc
```

## Oppdatering

Når du har gjort endringer i `.bashrc` (fra laptop):
```bash
# På laptop:
cd ~/dotfiles
git pull  # (hvis endret fra annen maskin)
nano bash/.bashrc
git add bash/.bashrc
git commit -m "Beskrivelse av endring"
git push

# På andre maskiner (VM/Proxmox):
cd ~/dotfiles  # eller /root/dotfiles på Proxmox
git pull
source ~/.bashrc
```

## Innhold

### Historikk
- Større historikk: 10000 linjer
- Ingen duplikater
- Append-modus (ikke overskriv)

### Prompt
- Git-aware: Viser branch når du er i et git-repo
- Farget: bruker@host:path(branch)$

### Aliaser

**Navigasjon:**
- `..` - Gå opp ett nivå
- `...` - Gå opp to nivåer
- `....` - Gå opp tre nivåer
- `~` - Gå til home
- `ll` - Liste filer detaljert
- `la` - Liste alle filer
- `l` - Lister i kolonne, og med filtype

**Git:**
- `gs` - git status
- `ga` - git add
- `gc` - git commit -m
- `gp` - git push
- `gl` - git log (oneline graph)
- `gd` - git diff
- `gpl` - git pull

