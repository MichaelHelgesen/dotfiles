# NEOVIM-OPPSETT
Startet oppsettet 11. februar, med grunnleggende innstillinger.
Målet er å gjøre Neovim til et fullverdig alternativ til Visual Studio Code,
med spesielt fokus på C#-utvikling.

## STRUKTUR

nvim/
init.lua
lua/
config/
options.lua -- grunnleggende innstillinger
keymaps.lua -- egne keymaps
plugins/
lazy-bootstrap.lua -- installerer og starter lazy.nvim
lsp.lua -- mason + nvim-lspconfig (lua_ls)
treesitter.lua -- syntax highlighting og kodeforståelse
csharp.lua -- roslyn.nvim (C#-språkstøtte)


## LUA
Grunnleggende innstillinger. Skrevet i Lua (Neovims konfigurasjonsspråk
siden versjon 0.5+, raskere og mer fleksibelt enn det eldre Vimscript).

## PLUGIN MANAGER
**lazy.nvim** administrerer alle plugins. Installeres automatisk selv
(bootstrap-mønster) første gang Neovim åpnes på en ny maskin – ingen
manuell installasjon nødvendig.

## LSP (SPRÅKSTØTTE)
**mason.nvim** + **mason-lspconfig.nvim** + **nvim-lspconfig** utgjør
grunnmuren. Bruker Neovim 0.11+ sin innebygde `vim.lsp.enable()`-API,
ikke det eldre (nå avviklede) `require('lspconfig').setup()`-mønsteret.

- **lua_ls** – språkstøtte for Lua, nyttig for å redigere denne configen selv

## C#-STØTTE
**roslyn.nvim** (seblyng) gir ekte C#-intellisense via Microsofts egen
Roslyn-motor – samme backend som Visual Studio/VS Code bruker.

- Krever .NET SDK installert (se dotfiles-script for installasjon)
- Roslyn-serveren installeres via en egendefinert Mason-registry
  (`Crashdummyy/mason-registry`), siden Roslyn ikke er i offisiell registry
- Pakkenavn i Mason: `roslyn-language-server`
- Deaktiverte en duplikat `roslyn_ls`-konfigurasjon fra nvim-lspconfig sin
  egen innebygde støtte, for å unngå to samtidig kjørende Roslyn-prosesser

## TREESITTER
**nvim-treesitter** gir ekte syntaksforståelse (ikke bare regex-basert
highlighting) – grunnlag for highlighting, indentering, og fremtidige
mer avanserte plugins.

**Viktig:** låst til `branch = "master"`, siden default-branchen (`main`)
er en full rewrite som krever Neovim 0.12+ og har en annen API
(`nvim-treesitter.configs` finnes ikke der).

### Kjent feil (uløst, upstream)
Neovim 0.12 + nvim-treesitter (master) har en kjent bug som kaster
`attempt to call method 'range'` for markdown-innhold (rammer bl.a.
LSP hover-vinduer, siden disse rendres som markdown internt).
Midlertidig løsning: stopper treesitter eksplisitt for markdown-buffere
via en autocmd i `treesitter.lua`.
Se: github.com/neovim/neovim/issues/39032

## NEOVIM-VERSJON
Oppgradert fra 0.11 til 0.12 (nyeste stabile) via tarball, siden
roslyn.nvim krever 0.12+. Installeres til `/opt/nvim`, ikke via apt
(Ubuntu sitt repo henger langt bak nyeste stabile versjon).

## PÅ VENT / NESTE STEG
- Autocompletion (nvim-cmp eller blink.cmp) – uten dette vises ikke
  Roslyn sine completion-forslag som en dropdown-meny
- Filutforsker (neo-tree / nvim-tree)
- Debugging (nvim-dap + netcoredbg)
- Formattering (conform.nvim)
- Git-integrasjon (gitsigns.nvim)
- Keymaps for LSP-funksjoner (code actions, go-to-definition, osv.)
