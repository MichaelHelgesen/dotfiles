-- Grunnleggende innstillinger
vim.opt.number = true           -- Vis linjenummer
vim.opt.relativenumber = true   -- Relative linjenummer (lettere navigering)
vim.opt.expandtab = true        -- Bruk mellomrom i stedet for tabs
vim.opt.shiftwidth = 2          -- Indentering = 2 mellomrom
vim.opt.tabstop = 2             -- Tab = 2 mellomrom
vim.opt.smartindent = true      -- Automatisk indentering
vim.opt.wrap = false            -- Ikke wrapp lange linjer
vim.opt.ignorecase = true       -- Søk ignorerer store/små bokstaver
vim.opt.smartcase = true        -- ...men respekterer dem hvis du bruker store
vim.opt.termguicolors = true    -- Bedre farger

-- Leder key (som prefix for egne shortcuts)
vim.g.mapleader = " "           -- Mellomromstasten er din "leader"
