---
tags:
  - neovim
  - keybinds
---

# Neovim Keybindings

> Leader key: `<Space>`

---

## File Explorer

| Key         | Action                          |
| ----------- | ------------------------------- |
| `<leader>e` | Toggle file explorer (oil.nvim) |

## LSP / Code Navigation

| Key              | Action                   |
| ---------------- | ------------------------ |
| `gd`             | Line diagnostics (float) |
| `<leader>gd`     | Go to definition         |
| `gD`             | Go to declaration        |
| `gi`             | Go to implementation     |
| `gr`             | Find references          |
| `K`              | Hover documentation      |
| `<leader>vws`    | Workspace symbols        |
| `[d`             | Previous diagnostic      |
| `]d`             | Next diagnostic          |
| `<leader>vca`    | Code action (all)        |
| `<leader>qf`     | Quick fix (lightbulb)    |
| `<leader>vi`     | Fix imports / organize   |
| `<leader>vrr`    | References               |
| `<leader>vrn`    | Rename symbol            |
| `<C-h>` (insert) | Signature help           |
| `<leader>f`      | Format buffer            |
| `<leader>zig`    | Restart LSP              |

## Diagnostics / Error Counter

| Key              | Action                   |
| ---------------- | ------------------------ |
| `;e`             | Workspace diagnostics (Telescope) |
| `;E`             | File diagnostics (Telescope)      |
| `<leader>d`      | Buffer diagnostics to quickfix    |

## Themes

| Key              | Action                   |
| ---------------- | ------------------------ |
| `:Theme`         | Select theme             |
| `:ThemeNext`     | Next theme               |
| `:ThemePrev`     | Previous theme           |
| `:ThemeSelect`   | Open theme selector      |

## Quickfix / Location List

| Key          | Action                         |
| ------------ | ------------------------------ |
| `<C-k>`      | Next quickfix                  |
| `<C-j>`      | Previous quickfix              |
| `<leader>k`  | Next location                  |
| `<leader>j`  | Previous location              |
| `<leader>tt` | Toggle trouble quickfix        |
| `<leader>xq` | Show quickfix list (telescope) |

## Telescope

| Key           | Action                       |
| ------------- | ---------------------------- |
| `;f`          | Find files (hidden included) |
| `<leader>ff`  | Find files                   |
| `<C-S>`       | Git files                    |
| `;r`          | Live grep                    |
| `<leader>ps`  | Grep search (prompt)         |
| `<leader>pws` | Grep word under cursor       |
| `<leader>pWs` | Grep WORD under cursor       |
| `\\`          | Buffers list                 |
| `;;`          | Resume picker                |
| `;e`          | Diagnostics                  |
| `;s`          | Treesitter symbols           |
| `<leader>vh`  | Help tags                    |
| `sf`          | File browser                 |
Keybind	Action
;e	Workspace diagnostics (Telescope)
;E	File diagnostics (Telescope)
## Harpoon

| Key           | Action                |
| ------------- | --------------------- |
| `<leader>a`   | Add file to harpoon   |
| `<C-p>`       | Toggle harpoon menu   |
| `<leader>1-4` | Select file 1-4       |
| `<C-B>`       | Previous harpoon file |
| `<C-N>`       | Next harpoon file     |

## Debugging (DAP)

| Key | Action |
|-----|--------|
| `<leader>dd` | Build & debug (Xcode) |
| `<leader>dr` | Debug without building |
| `<leader>dt` | Debug tests |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Toggle message breakpoint |
| `<leader>dx` | Terminate debugger |
| `<leader>dc` | Continue |
| `<leader>ds` | Step over |
| `<leader>di` | Step into |
| `<leader>do` | Step out |
| `<leader>du` | Toggle DAP UI |

## Buffer Navigation

| Key | Action |
|-----|--------|
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |

## Editing

| Key | Action |
|-----|--------|
| `J` (visual) | Move line down |
| `K` (visual) | Move line up |
| `<leader>s` | Search & replace word under cursor |
| `<leader>x` | Make file executable |
| `<leader><leader>` | Reload config |

## Others

| Key | Action |
|-----|--------|
| `<leader>u` | Toggle undotree |
| `;c` | Open LazyGit |
| `<C-f>` | Tmux sessionizer |
| `<leader>ca` | Make it rain |