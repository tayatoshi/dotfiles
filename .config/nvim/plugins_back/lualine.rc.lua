-- local custom_iceberg_dark = require'lualine.themes.iceberg_dark'

-- Change the background of lualine_c section for normal mode
-- custom_iceberg_dark.normal.b.fg = '#c6c8d1'
-- custom_iceberg_dark.normal.c.fg = '#c6c8d1'

local gps = require("nvim-gps")

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = tokyonight,
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      {'diff',
      -- Is it me or the symbol for modified us really weird
      symbols = { added = ' ', modified = '柳 ', removed = ' ' },
    },
    {'diagnostics',
    sources = {"coc"},
    symbols = { error = " ", warn = ' ', info = ' ', hint = ''},
    diagnostics_color = {
      -- Same values as the general color option can be used here.
      error = {fg='#d1666a'}, -- Changes diagnostics' error color.
      warn  = {fg='#ff922b'},  -- Changes diagnostics' warn color.
      info  = {fg='#bd87e6'},  -- Changes diagnostics' info color.
      hint  = {fg='#95c4ce'},  -- Changes diagnostics' hint color.
    },
  },
},
lualine_c = {
  {
    'filename',
    file_status = true,      -- Displays file status (readonly status, modified status)
    path = 2,                -- 0: Just the filename
    -- 1: Relative path
    -- 2: Absolute path

    shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
    -- for other components. (terrible name, any suggestions?)
    symbols = {
      modified = '[+]',      -- Text to show when the file is modified.
      readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
      unnamed = '[No Name]', -- Text to show for unnamed buffers.
    },
    color = { fg = '#d4d5db', gui='bold' },
  },
  { gps.get_location, cond = gps.is_available,  color = { fg = '#95c4ce' },},
},
lualine_x = {'encoding',
{
  'fileformat',
  symbols = {
    unix = 'unix ', -- e712
    dos = 'dos ',  -- e70f
    mac = 'mac ',  -- e711
  },
},
{'filetype',
colored = true,   -- Displays filetype icon in color if set to true
icon_only = false, -- Display only an icon for filetype
  },
},
lualine_y = {'progress'},
lualine_z = {'location'}
},
inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {{'filename',file_status = true, path = 2}},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
},
extensions = {}
}
