-- https://neovim.io/doc/user/options.html#option-summary

local options = {
    autoindent = true,
    backup = false,
    clipboard = 'unnamedplus',
    cmdheight = 0,
    cursorline = true,
    expandtab = true,
    fileencoding = 'utf-8',
    -- foldopen = 'all', 
    -- foldmethod = 'indent',
    ignorecase = true,
    mouse = 'a',
    number = true,
    relativenumber = true,
    showmode = false,
    smartindent = true,
    splitright = true,
    splitbelow = true,
    shiftwidth = 2,
    termguicolors = true,
    title = true,
    wrap = false,
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


