local M = {}

---@class ClaudePalette
---@field bg string
---@field bg_alt string
---@field bg_float string
---@field bg_highlight string
---@field bg_visual string
---@field bg_search string
---@field fg string
---@field fg_alt string
---@field fg_muted string
---@field border string
---@field accent string
---@field cursor string
---@field red string
---@field red_bright string
---@field green string
---@field green_bright string
---@field yellow string
---@field yellow_bright string
---@field blue string
---@field blue_bright string
---@field purple string
---@field purple_bright string
---@field cyan string
---@field cyan_bright string
---@field type string
---@field param string
---@field diff_add string
---@field diff_change string
---@field diff_delete string
---@field diff_text string
---@field sign_add string
---@field sign_change string
---@field sign_delete string
---@field ansi { normal: string[], bright: string[] }

---@type table<"dark"|"light", ClaudePalette>
M.palettes = {
  dark = {
    -- Core (from Anthropic / Claude brand guidelines)
    bg = "#1f1e1b",
    bg_alt = "#181715",
    bg_float = "#262521",
    bg_highlight = "#292824",
    bg_visual = "#473c35",
    bg_search = "#4a382b",
    fg = "#f0eee6",
    fg_alt = "#b5b3a9",
    fg_muted = "#7c7b74",
    border = "#393834",
    accent = "#d97757",
    cursor = "#d97757",

    -- Semantic / ANSI colors
    red = "#e05252",
    red_bright = "#d97757",
    green = "#87b368",
    green_bright = "#9ec77f",
    yellow = "#e0a345",
    yellow_bright = "#ecc06c",
    blue = "#6a9bcc",
    blue_bright = "#87b4e0",
    purple = "#9a86fd",
    purple_bright = "#b1b9f9",
    cyan = "#5eb5c9",
    cyan_bright = "#7ec9d8",
    type = "#e0a345",
    param = "#f0eee6",

    -- Subtle diff backgrounds
    diff_add = "#233125",
    diff_change = "#232c35",
    diff_delete = "#362221",
    diff_text = "#2e3d4d",

    -- Modus-style prominent sign column backgrounds
    sign_add = "#1d3b24",
    sign_change = "#3b3216",
    sign_delete = "#45211f",

    ansi = {
      normal = {
        "#302f2c",
        "#e05252",
        "#87b368",
        "#e0a345",
        "#6a9bcc",
        "#9a86fd",
        "#5eb5c9",
        "#b5b3a9",
      },
      bright = {
        "#7c7b74",
        "#d97757",
        "#9ec77f",
        "#ecc06c",
        "#87b4e0",
        "#b1b9f9",
        "#7ec9d8",
        "#faf9f5",
      },
    },
  },

  light = {
    -- Core (from Anthropic / Claude brand guidelines)
    bg = "#faf9f5",
    bg_alt = "#f0eee6",
    bg_float = "#f3f1e9",
    bg_highlight = "#f2f0e8",
    bg_visual = "#dfd9cc",
    bg_search = "#f2d9ce",
    fg = "#141413",
    fg_alt = "#5e5d59",
    fg_muted = "#87867f",
    border = "#d1cfc5",
    accent = "#b85435",
    cursor = "#d97757",

    -- Semantic / ANSI colors
    red = "#be3b30",
    red_bright = "#d97757",
    green = "#4f7532",
    green_bright = "#588238",
    yellow = "#965a14",
    yellow_bright = "#b87324",
    blue = "#2f67b8",
    blue_bright = "#4377c4",
    purple = "#7b3fa0",
    purple_bright = "#8465bd",
    cyan = "#1f7287",
    cyan_bright = "#2c89a0",
    type = "#965a14",
    param = "#141413",

    -- Subtle diff backgrounds
    diff_add = "#e4f0e7",
    diff_change = "#e4ecf5",
    diff_delete = "#f5e3e1",
    diff_text = "#cedff0",

    -- Modus-style prominent sign column backgrounds
    sign_add = "#c4ebd0",
    sign_change = "#f7ddb2",
    sign_delete = "#f5ccc6",

    ansi = {
      normal = {
        "#141413",
        "#be3b30",
        "#4f7532",
        "#965a14",
        "#2f67b8",
        "#7b3fa0",
        "#1f7287",
        "#87867f",
      },
      bright = {
        "#5e5d59",
        "#d97757",
        "#588238",
        "#b87324",
        "#4377c4",
        "#8465bd",
        "#2c89a0",
        "#f0eee6",
      },
    },
  },
}

---@param variant? "dark"|"light"
---@return ClaudePalette
function M.get(variant)
  local v = variant or (vim.o.background == "light" and "light" or "dark")
  return M.palettes[v] or M.palettes.dark
end

return M
