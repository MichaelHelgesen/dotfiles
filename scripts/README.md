# Installasjonsscripts

Scripts for å sette opp nye maskiner.

## Scripts

### 01-base-packages.sh
Installerer grunnleggende pakker som trengs på alle maskiner.

**Pakker:**
- git - Versjonskontroll
- curl/wget - Last ned filer
- htop - Prosessovervåking
- tree - Vis mappestruktur
- unzip - Pakke ut filer
- vim - Teksteditor

**Bruk:**
```bash
sudo ./scripts/01-base-packages.sh
```

## Rekkefølge

1. `01-base-packages.sh` - Alltid først
2. (Flere scripts kommer)
