vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--[[
vim.keymap.set("v", "<leader>pr", function ()
    local input = vim.fn.input("Replace what? ")
    local replace vim.fn.input("Replace with: ")
    vim.cmd(string.format(":'<,'>s/%s/%s/gc", input, replace))
end, {desc = "Replace selected text"})
]]--


