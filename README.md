# claude-theme.nvim

A warm dark & light Neovim colorscheme inspired by Anthropic's Claude palette (`#1f1e1b` / `#faf9f5` / `#d97757`).

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "hnpyn/claude-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = false,
    float_transparent = false,
    line_nr_column_background = true,
    sign_column_background = true,
    italic_comments = true,
    terminal_colors = true,
  },
  config = function(_, opts)
    require("claude-theme").setup(opts)
    vim.cmd.colorscheme("claude")
  end,
}
```

## Usage

- `:colorscheme claude` — automatically follows `vim.o.background` (`dark` / `light`)
- `:colorscheme claude-dark` — dark variant
- `:colorscheme claude-light` — light variant

## VS Code / Cursor / Qoder

The same palette ships as a VS Code color theme under [`vscode/`](./vscode). See [`vscode/README.md`](./vscode/README.md) for local install steps (Cursor/VS Code: symlink; Qoder: copy + `extensions.json` registration), then select **Claude Dark** / **Claude Light**.
