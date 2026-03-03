return {
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "scottmckendry/cyberdream.nvim", priority = 1000 },
  { "miikanissi/modus-themes.nvim", priority = 1000 },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({})
    end,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
