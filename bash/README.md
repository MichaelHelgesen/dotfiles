# Bash Configuration

Min personlige bash-konfigurasjon med aliaser, prompt og historikk-oppsett.

## Filer

- `.bashrc` - Hovedkonfigurasjon med aliaser og git-aware prompt

## Installasjon
```bash
# Lag symlink til .bashrc
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc

# Last inn på nytt
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

## Tips

Etter å ha endret `.bashrc`, last inn på nytt:
```bash
source ~/.bashrc
```
