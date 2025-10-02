return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo =
        [[██████╗ ██╗  ██╗██████╗ ██╗   ██╗██╗███╗   ███╗
██╔══██╗██║ ██╔╝██╔══██╗██║   ██║██║████╗ ████║
██║  ██║█████╔╝ ██████╔╝██║   ██║██║██╔████╔██║
██║  ██║██╔═██╗ ██╔═══╝ ╚██╗ ██╔╝██║██║╚██╔╝██║
██████╔╝██║  ██╗██║      ╚████╔╝ ██║██║ ╚═╝ ██║
╚═════╝ ╚═╝  ╚═╝╚═╝       ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

      -- your "Minecraft style" splash texts
      local splashes = {
        "[@DaKeypunchAr]",
      }

      math.randomseed(os.time())
      local splash = splashes[math.random(#splashes)]

      -- Insert the splash **into the logo string** with padding
      logo = string.rep("\n", 8) .. logo .. "\n" .. splash .. "\n\n"

      opts.config = opts.config or {}
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
