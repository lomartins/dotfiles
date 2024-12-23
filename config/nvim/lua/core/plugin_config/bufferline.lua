require("bufferline").setup{}

local keymap = vim.keymap

-- keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" }) -- open new ta--[[ b
-- keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
keymap.set("n", "<S-l>", "<CMD>BufferLineCycleNext<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-h>", "<CMD>BufferLineCyclePrev<CR>", { desc = "Go to previous tab" }) --  go to previous tab
