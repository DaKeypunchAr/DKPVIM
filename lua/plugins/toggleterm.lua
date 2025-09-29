return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = function()
    return {
      {
        "<C-/>",
        "<cmd>ToggleTerm<cr>",
        desc = "ToggleTerm",
      },
    }
  end,

  opts = {
    direction = "float",
  },
  config = true,
}
