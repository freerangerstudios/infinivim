local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Plugins
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
    { "akinsho/bufferline.nvim" },
    { "nvim-lualine/lualine.nvim" },
    { "windwp/nvim-autopairs" },
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-tree/nvim-tree.lua" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "goolord/alpha-nvim" },

    -- Colorschemes
    { "catppuccin/nvim", name = "catppuccin" },
})
