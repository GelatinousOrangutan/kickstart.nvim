return {
  {
    'folke/edgy.nvim',
    event = 'VeryLazy',
    opts = function(_, opts)
      opts.right = opts.right or {}
      table.insert(opts.right, {
        ft = 'copilot-chat',
        title = 'Copilot Chat',
        size = { width = 75 },
      })
    end,
  },
}
