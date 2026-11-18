local M = {}

---@class ClaudeConfig
---@field transparent boolean
---@field float_transparent boolean
---@field line_nr_column_background boolean
---@field sign_column_background boolean
---@field italic_comments boolean
---@field terminal_colors boolean
---@field overrides? fun(colors: ClaudePalette): table<string, vim.api.keyset.highlight>

---@type ClaudeConfig
M.config = {
  transparent = false,
  float_transparent = false,
  line_nr_column_background = true,
  sign_column_background = true,
  italic_comments = true,
  terminal_colors = true,
  overrides = nil,
}

---@param opts? Partial<ClaudeConfig>
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

---@param c ClaudePalette
local function set_terminal_colors(c)
  for i = 1, 8 do
    vim.g["terminal_color_" .. (i - 1)] = c.ansi.normal[i]
    vim.g["terminal_color_" .. (i + 7)] = c.ansi.bright[i]
  end
end

---@param variant? "dark"|"light"
function M.load(variant)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "claude"

  package.loaded["claude-theme.palette"] = nil
  package.loaded["claude-theme.groups"] = nil
  local palette = require("claude-theme.palette").get(variant)
  local groups = require("claude-theme.groups").get(palette, M.config)

  if type(M.config.overrides) == "function" then
    groups = vim.tbl_extend("force", groups, M.config.overrides(palette) or {})
  end

  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  if M.config.terminal_colors then
    set_terminal_colors(palette)
  end

  package.loaded["lualine.themes.claude"] = nil
  package.loaded["lualine.themes.claude-dark"] = nil
  package.loaded["lualine.themes.claude-light"] = nil
end

return M
