return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slant",
      always_show_bufferline = true,
      show_buffer_close_icon = true,
      show_close_icon = false,
      color_icon = true,
      offsets = {
        filetype = "NvimTree",
        separator = true,
      },
    },
  },
}
