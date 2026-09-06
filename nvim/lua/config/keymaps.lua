-- Leder key (som prefix for egne shortcuts)
vim.g.mapleader = " "  -- Mellomromstasten er din "leader"
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
