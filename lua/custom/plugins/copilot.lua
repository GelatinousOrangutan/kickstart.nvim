return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    config = function() require('copilot').setup {} end,
    dependencies = {
      'copilotlsp-nvim/copilot-lsp',
    },
    opts = {
      suggestion = {
        enabled = false,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        keymap = {
          accept = false, -- handled by nvim-cmp / blink.cmp
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
      auth_provider_url = nil, -- URL to authentication provider, if not "https://github.com/"
    },
  },
}
