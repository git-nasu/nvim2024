-- =============================================================================
-- URL: https://github.com/sainnhe/sonokai
-- Filename: lua/lualine/themes/sonokai.lua
-- Author: sainnhe
-- Email: i@sainnhe.dev
-- License: MIT License
-- =============================================================================
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local configuration = vim.fn["sonokai#get_configuration"]()
    local palette = vim.fn["sonokai#get_palette"](configuration.style, configuration.colors_override)

    if configuration.transparent_background == 2 then
      palette.bg1 = palette.none
    end

    local my_lualine_theme = {
      normal = {
        a = { bg = palette.bg_blue[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg4[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      insert = {
        a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg4[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      visual = {
        a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg4[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      replace = {
        a = { bg = palette.orange[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg4[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      command = {
        a = { bg = palette.yellow[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg4[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      terminal = {
        a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
        b = { bg = palette.bg3[1], fg = palette.fg[1] },
        c = { bg = palette.bg1[1], fg = palette.fg[1] },
      },
      inactive = {
        a = { bg = palette.bg1[1], fg = palette.grey[1] },
        b = { bg = palette.bg1[1], fg = palette.grey[1] },
        c = { bg = palette.bg1[1], fg = palette.grey[1] },
      },
    }

    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
