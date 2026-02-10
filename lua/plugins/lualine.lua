return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Customize the filename component to show more path
      -- The lualine_c section typically contains the filename
      opts.sections.lualine_c = {
        {
          "filename",
          path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute with ~
          shorting_target = 40, -- Shorten path to leave this many spaces in the window
        },
      }
    end,
  },
}
