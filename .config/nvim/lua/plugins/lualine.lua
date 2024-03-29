-- Change the background of lualine_c section for normal mode

-- local navic = require("nvim-navic")

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      {'diff',
      -- Is it me or the symbol for modified us really weird
      symbols = { added = ' ', modified = '柳', removed = ' ' },
    },
    {'diagnostics',
    sources = {'nvim_diagnostic'},
    symbols = { error = "E ", warn = 'W ', info = 'I ', hint = 'H'},
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
  -- { navic.get_location, cond = navic.is_available,  color = { fg = '#95c4ce' },},
},
lualine_x = {'encoding',
{
  'fileformat',
  symbols = {
    mac = 'mac ',  -- e711
    unix = 'unix ', -- e712
    dos = 'dos ',  -- e70f
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
