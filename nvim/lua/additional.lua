-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require('nvim-tree').setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "java", "rust", "json", "javascript", "typescript", "vue", "html", "css", "scss" },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
  })

require('hlchunk').setup({
    chunk = {
      enable = false
    },
    line_num = {
      enable = false
    },
    blank = {
      enable = false
    }
  })

require('lualine').setup {
  options = {
    theme = 'everforest',
    component_separators = "|",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = {
      { "mode" },
    },
    lualine_b = { "filename" },
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic", "coc" },
        symbols = { error = " ", warn = " ", info = " " },
        diagnostics_color = {
          color_error = { fg = "#e67a80" },
          color_warn = { fg = "#dbbc7f" },
          color_info = { fg = "#7fbbb3" }
        },
        colored = true
      }
    },
    lualine_x = {},
    lualine_y = { "filetype", "encoding", "fileformat" },
    lualine_z = {
      { "location" },
    },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
  tabline = {},
  extensions = {},
}

require('nvim-surround').setup()

require('nvim-autopairs').setup({
  map_cr = false,
  check_ts = true
})
