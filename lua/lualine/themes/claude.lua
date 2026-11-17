local palette = require("claude-theme.palette").get()

return {
  normal = {
    a = { fg = palette.bg, bg = palette.accent, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  insert = {
    a = { fg = palette.bg, bg = palette.green, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  visual = {
    a = { fg = palette.bg, bg = palette.purple, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  replace = {
    a = { fg = palette.bg, bg = palette.red, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  command = {
    a = { fg = palette.bg, bg = palette.yellow, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  terminal = {
    a = { fg = palette.bg, bg = palette.cyan, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_visual },
    c = { fg = palette.fg_alt, bg = palette.bg_alt },
  },
  inactive = {
    a = { fg = palette.fg_muted, bg = palette.bg_alt, gui = "bold" },
    b = { fg = palette.fg_muted, bg = palette.bg_alt },
    c = { fg = palette.fg_muted, bg = palette.bg_alt },
  },
}
