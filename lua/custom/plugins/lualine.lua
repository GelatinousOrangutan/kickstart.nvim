return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'dracula',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
      },
      sections = {
        lualine_x = {
          {
            'copilot',
            -- Default values
            symbols = {
              status = {
                icons = {
                  enabled = ' ',
                  sleep = ' ', -- auto-trigger disabled
                  disabled = ' ',
                  warning = ' ',
                  unknown = ' ',
                },
                hl = {
                  enabled = '#F527DD',
                  sleep = '#50FA7B',
                  disabled = '#6272A4',
                  warning = '#FFB86C',
                  unknown = '#FF5555',
                },
              },
              spinners = 'dots', -- has some premade spinners
              spinner_color = '#6272A4',
            },
            show_colors = true,
            show_loading = true,
          },
          'encoding',
          'fileformat',
          'filetype',
        },
      },
    },
  },
}
