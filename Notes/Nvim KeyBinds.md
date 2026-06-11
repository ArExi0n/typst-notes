---
date: 2025-01-01
updated: 2025-01-01
class: note
tags:
  - neovim
  - config
  - dotfiles
source:
related:
description: Neovim keybindings reference for LSP, Telescope, Harpoon, DAP, and more
aliases:
  - Nvim
status: evergreen
---

# Neovim Keybindings

> Leader key: `<Space>`

---

## File Explorer

| Key                    | Action                 |
| ---------------------- | ---------------------- |
| `<leader>pv`           | Toggle Neotree         |
| `sf`                   | Telescope file browser |
| `t` (nvim-tree)        | Open in tab            |
| `N` (file browser)     | Create file            |
| `h` (file browser)     | Go to parent directory |
| `<C-u>` (file browser) | Move up 10 lines       |
| `<C-d>` (file browser) | Move down 10 lines     |

## Completion (blink.cmp)

| Key     | Action          |
| ------- | --------------- |
| `<C-j>` | Next item       |
| `<C-k>` | Previous item   |
| `<Tab>` | Accept / expand |

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
| `<leader>vca`    | Code action              |
| `<leader>vi`     | Auto-fix imports         |
| `<leader>vrr`    | References               |
| `<leader>vrn`    | Rename symbol            |
| `<C-h>` (insert) | Signature help           |
| `<leader>f`      | Format buffer            |
| `<leader>zig`    | Restart LSP              |

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

## Harpoon

| Key         | Action                |
| ----------- | --------------------- |
| `<leader>a` | Add file to harpoon   |
| `<C-p>`     | Toggle harpoon menu   |
| `<leader>1` | Select file 1         |
| `<leader>2` | Select file 2         |
| `<leader>3` | Select file 3         |
| `<leader>4` | Select file 4         |
| `<C-B>`     | Previous harpoon file |
| `<C-N>`     | Next harpoon file     |

## Debugging (DAP)

| Key          | Action                    |
| ------------ | ------------------------- |
| `<leader>dd` | Build & debug (Xcode)     |
| `<leader>dr` | Debug without building    |
| `<leader>dt` | Debug tests               |
| `<leader>dT` | Debug class tests         |
| `<leader>b`  | Toggle breakpoint         |
| `<leader>B`  | Toggle message breakpoint |
| `<leader>dx` | Terminate debugger        |
| `<leader>dc` | Continue                  |
| `<leader>dC` | Run to cursor             |
| `<leader>ds` | Step over                 |
| `<leader>di` | Step into                 |
| `<leader>do` | Step out                  |
| `<leader>dh` | Hover (widget)            |
| `<leader>de` | Eval (dapui)              |
| `<leader>du` | Toggle DAP UI             |
| `<leader>dw` | Add watch                 |
| `<leader>dW` | Remove watch              |
| `<leader>dC` | Clear watches             |

## Xcode Build

| Key          | Action                         |
| ------------ | ------------------------------ |
| `<leader>X`  | Show Xcodebuild actions picker |
| `<leader>xf` | Project manager                |
| `<leader>xb` | Build project                  |
| `<leader>xB` | Build for testing              |
| `<leader>xr` | Build & run                    |
| `<leader>xt` | Run tests                      |
| `<leader>xT` | Run test class                 |
| `<leader>xl` | Toggle logs                    |
| `<leader>xc` | Toggle code coverage           |
| `<leader>xC` | Show code coverage report      |
| `<leader>xe` | Toggle test explorer           |
| `<leader>xs` | Show failing snapshots         |
| `<leader>xd` | Select device                  |
| `<leader>xp` | Select test plan               |
| `<leader>xq` | Show quickfix list             |
| `<leader>xx` | Quickfix line                  |
| `<leader>xa` | Show code actions              |

## Tests (Neotest)

| Key          | Action              |
| ------------ | ------------------- |
| `;tt`        | Run test file       |
| `;tr`        | Run nearest test    |
| `;tT`        | Run all test files  |
| `;tl`        | Run last test       |
| `;ts`        | Toggle test summary |
| `;to`        | Show test output    |
| `;tO`        | Toggle output panel |
| `;tS`        | Stop test run       |
| `<leader>tf` | Plenary test file   |

## Refactoring

| Key                   | Action                 |
| --------------------- | ---------------------- |
| `<leader>rn`          | Incremental rename     |
| `<leader>r` (visual)  | Select refactor action |
| `<leader>re` (visual) | Extract function       |
| `<leader>rf` (visual) | Extract to file        |
| `<leader>rv` (visual) | Extract variable       |
| `<leader>ri`          | Inline variable        |
| `<leader>rI`          | Inline function        |
| `<leader>rb`          | Extract block          |
| `<leader>rbf`         | Extract block to file  |

## Quickfix / Location List

| Key          | Action                  |
| ------------ | ----------------------- |
| `<C-k>`      | Next quickfix           |
| `<C-j>`      | Previous quickfix       |
| `<leader>k`  | Next location           |
| `<leader>j`  | Previous location       |
| `<leader>tt` | Toggle trouble quickfix |

## Window Navigation (no arrow keys)

| Key               | Action                    |
| ----------------- | ------------------------- |
| `<leader>wh`      | Go to window left         |
| `<leader>wj`      | Go to window down         |
| `<leader>wk`      | Go to window up           |
| `<leader>wl`      | Go to window right        |
| `<leader>wH`      | Shrink window width       |
| `<leader>wL`      | Grow window width         |
| `<leader>wJ`      | Shrink window height      |
| `<leader>wK`      | Grow window height        |
| `<leader>wv`      | Split window vertically   |
| `<leader>ws`      | Split window horizontally |
| `<leader>wq`      | Close window              |
| `<leader>w=`      | Equalize window sizes     |

## File / Buffer Navigation

| Key                        | Action                       |
| -------------------------- | ---------------------------- |
| `<Tab>`                    | Next buffer (Bufferline)     |
| `<S-Tab>`                  | Previous buffer (Bufferline) |
| `<C-^>`                    | Alternate / previous file    |
| `\\`                       | Telescope buffers list       |
| `<C-p>`                    | Harpoon: toggle menu         |
| `<C-B>`                    | Harpoon: previous file       |
| `<C-N>`                    | Harpoon: next file           |
| `<leader>1` .. `<leader>4` | Harpoon: select file 1-4     |

## Editing

| Key                  | Action                                       |
| -------------------- | -------------------------------------------- |
| `J` (visual)         | Move line down                               |
| `K` (visual)         | Move line up                                 |
| `J` (normal)         | Join lines, keep cursor                      |
| `<C-d>`              | Page down, center                            |
| `<C-u>`              | Page up, center                              |
| `n`                  | Next search, center                          |
| `N`                  | Prev search, center                          |
| `=ap`                | Re-indent paragraph                          |
| `<leader>p` (visual) | Paste without yanking                        |
| `<leader>y`          | Yank to system clipboard                     |
| `<leader>Y`          | Yank line to system clipboard                |
| `<leader>d`          | Delete without yanking                       |
| `<C-c>` (insert)     | Escape                                       |
| `Q`                  | Disabled (no Ex mode)                        |
| `<leader>s`          | Replace word under cursor (whole file)       |
| `<leader>r`          | Replace word under cursor on N lines (UI)    |
| `e` (n/x/o)          | Go to end of line (`$`)                      |
| `E` (normal)         | Forward to end of word                       |
| `<leader>x`          | Make file executable                         |
| `<leader><leader>`   | Reload config                                |

## Typst

| Key          | Action                   |
| ------------ | ------------------------ |
| `<leader>tp` | Start Typst preview      |
| `<leader>tP` | Stop Typst preview       |
| `<leader>te` | Export Typst PDF         |
| `<leader>tv` | Open Typst PDF in sioyek |

## Obsidian

| Key                   | Action            |
| --------------------- | ----------------- |
| `<leader>ob`          | Backlinks         |
| `<leader>od`          | Daily note        |
| `<leader>ol`          | Note links        |
| `<leader>oo`          | Open in Obsidian  |
| `<leader>oq`          | Quick switch      |
| `<leader>os`          | Search notes      |
| `<leader>ot`          | Insert template   |
| `<leader>oT`          | Table of contents |
| `<leader>oc` (buffer) | Toggle checkbox   |
| `gf` (buffer)         | Passthrough link  |
| `<CR>` (buffer)       | Smart action      |
| `<C-x>` (picker)      | New note          |
| `<C-l>` (picker)      | Insert link       |

## Other

| Key            | Action                             |
| -------------- | ---------------------------------- |
| `<leader>u`    | Toggle undotree                    |
| `<leader>ts`   | Select theme                       |
| `<leader>tn`   | Next theme                         |
| `<leader>ca`   | Make it rain (cellular-automaton)  |
| `<leader>vwm`  | Start Vim With Me                  |
| `<leader>svwm` | Stop Vim With Me                   |
| `<leader>apm`  | Show APM                           |
| `<leader>?`    | Find keybindings (Legendary)       |
| `;c`           | Open LazyGit                       |
| `<leader>d`    | Open DBUI                          |
| `\\r`          | Test current REST file             |

## Tmux

Prefix: `C-Space`

| Key                  | Action                                   |
| -------------------- | ---------------------------------------- |
| `Prefix n` / `p`     | Next / previous window                   |
| `Prefix <num>`       | Select window by number                  |
| `Prefix l`           | Last / previous window                   |
| `Prefix c`           | Create new window                        |
| `Prefix ,`           | Rename window                            |
| `Prefix w`           | List windows                             |
| `Prefix S`           | Choose session tree                      |
| `Prefix &`           | Kill window                              |
| `Prefix %`           | Split pane vertically                    |
| `Prefix "`           | Split pane horizontally                  |
| `Prefix o`           | Next pane                                |
| `Prefix <arrow>`     | Select pane                              |
| `Prefix z`           | Zoom pane                                |
| `Prefix r`           | Reload tmux config                       |
| `<C-f>`              | Open tmux sessionizer (new window)       |
| `<M-h>`              | Open tmux sessionizer (vsplit)           |
| `<M-H>`              | Open tmux sessionizer (new window, nvim) |

## Go Error Helpers

| Key          | Action                                |
| ------------ | ------------------------------------- |
| `<leader>ee` | Insert `if err != nil { return err }` |
| `<leader>ea` | Insert `assert.NoError`               |
| `<leader>ef` | Insert `log.Fatalf` error check       |
| `<leader>el` | Insert `logger.Error`                 |

## Treesitter Text Objects

| Key             | Action                   |
| --------------- | ------------------------ |
| `<C-space>`     | Increment selection      |
| `<BS>` (visual) | Decrement selection      |
| `af`/`if`       | Around/inside function   |
| `ac`/`ic`       | Around/inside class      |
| `]f` / `[f`     | Next/prev function start |
| `]F` / `[F`     | Next/prev function end   |
| `]c` / `[c`     | Next/prev class start    |
| `]C` / `[C`     | Next/prev class end      |

## Misc

| Key                           | Action                   |
| ----------------------------- | ------------------------ |
| `<C-j>` / `<C-k>` (telescope) | Move selection next/prev |
| `N` (file browser)            | Create file              |
| `h` (file browser)            | Go to parent directory   |
| `t` (nvim-tree)               | Open in tab              |
| `q` / `<Esc>` (dapui float)   | Close floating window    |

---

## Snippets

> Type the prefix and press `<Tab>` to expand. Powered by `blink.cmp` + `vim.snippet` + `friendly-snippets`.
> Custom snippets live at `~/.config/nvim/snippets/`.

### Rust

| Prefix | Expansion |
| ------ | --------- |
| `st` | `#[derive(Debug, Clone)] pub struct Name {}` |
| `en` | `#[derive(Debug, Clone)] pub enum Name { Variant }` |
| `imp` | `impl Name { pub fn new() -> Self {} }` |
| `afn` | `pub async fn name() -> anyhow::Result<()>` |
| `tm` | `#[tokio::main] async fn main() -> anyhow::Result<()>` |
| `test` | `#[cfg(test)] mod tests { ... }` |
| `der` | `#[derive(Debug, Clone)]` |
| `err` | `#[derive(Debug, thiserror::Error)] pub enum` |
| `res` | `pub type Result<T> = std::result::Result<T, Error>` |
| `mch` | `match expr { Pattern => { } }` |
| `ls` / `lo` | `let Some(…)` / `let Ok(…)` destructuring |

### Go

| Prefix | Expansion |
| ------ | --------- |
| `err` | `if err != nil { return err }` |
| `errf` | `return fmt.Errorf("...: %w", err)` |
| `fn` | `func name(args) error {}` |
| `meth` | `func (r *Type) name() error {}` |
| `st` | `type Name struct {}` |
| `iface` | `type Name interface {}` |
| `test` | `func TestName(t *testing.T) { }` |
| `tt` | Table-driven test |
| `go` | `go func() {}()` |
| `http` | `http.HandleFunc("GET /path", ...)` |

### TypeScript / JavaScript

| Prefix | Expansion |
| ------ | --------- |
| `cl` | `console.log(var)` |
| `imp` | `import { ... } from "module"` |
| `afn` | `const name = (args) => {}` |
| `iface` | `interface Name {}` |
| `ty` | `type Name = string` |
| `en` | `enum Name { Variant }` |
| `rfc` | React Function Component |
| `us` / `ue` | `useState` / `useEffect` |
| `it` / `desc` | Jest `it()` / `describe()` |

### Lua

| Prefix | Expansion |
| ------ | --------- |
| `fn` / `lfn` | `function` / `local function` |
| `fori` / `forp` | `for ipairs()` / `for pairs()` |
| `mod` | Module pattern |
| `req` | `local name = require("module")` |
| `vk` / `va` / `vc` | `vim.keymap.set` / autocmd / user command |

### Python

| Prefix | Expansion |
| ------ | --------- |
| `fn` | `def name(args):` |
| `afn` | `async def name(args):` |
| `cls` | `class Name:` |
| `main` | `if __name__ == "__main__":` |
| `test` | `def test_name():` |
| `dccl` | `@dataclass class Name:` |
| `pyd` | Pydantic `BaseModel` |
| `fix` | `@pytest.fixture` |

### C / C++

| Prefix | Expansion |
| ------ | --------- |
| `inc` | `#include <...>` |
| `fn` | Function definition |
| `main` | `int main(...) {}` |
| `cls` (C++) | Class with constructor |
| `st` (C) | `typedef struct {} Name` |
| `rfor` (C++) | Range-based for |
| `lam` (C++) | Lambda `[&](args) {}` |
| `test` (C++) | Google Test `TEST(Suite, Case)` |

### Swift

| Prefix | Expansion |
| ------ | --------- |
| `st` | `struct Name {}` |
| `cls` | `class Name {}` |
| `en` | `enum Name { case value }` |
| `fn` | `func name() -> ReturnType` |
| `afn` | `async func name() -> ReturnType` |
| `prot` | `protocol Name {}` |
| `guard` | `guard let value = optional else { }` |
| `view` | `struct Name: View { ... }` |
| `xtest` | XCTest class |

### Kotlin

| Prefix | Expansion |
| ------ | --------- |
| `cls` | `class Name` |
| `dc` | `data class Name` |
| `fn` | `fun name(): Unit` |
| `sfn` | `suspend fun name() ` |
| `en` | `enum class Name` |
| `seal` | `sealed class Name` |
| `when` | `when(value) { cond -> }` |
| `test` | `@Test fun testName()` |
| `compfn` | `@Composable fun Name()` |

### Bash

| Prefix | Expansion |
| ------ | --------- |
| `shb` | Shebang with strict mode |
| `fn` | `name() {}` |
| `if` / `ife` | `if [[ cond ]]; then` |
| `err` | Error check |
| `trap` | `trap 'cleanup' EXIT` |

### Typst

| Prefix | Expansion |
| ------ | --------- |
| `doc` | Document setup |
| `h` / `sh` | Heading / Subheading |
| `math` / `mathb` | Inline / block math |
| `fig` | Figure |
| `tbl` | Table |

### Global (all filetypes)

| Prefix | Expansion |
| ------ | --------- |
| `todo` | `TODO(ansh):` |
| `fixme` | `FIXME:` |
| `hack` | `HACK:` |
| `note` | `NOTE:` |
| `date` | `2026-06-01` |
| `ts` | `2026-06-01 18:14:00` |
