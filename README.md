<h2 align="center">Nixvim</h2>

> This repository contains my Neovim configuration, which is declaratively written in Nix.

**Configuring/editing**

To start configuring, just add or modify the Nix files in `./config`.

If you add a new configuration file, remember to add it to the [`config/default.nix`](./config/default.nix) file.
Also remember to track it with git, so that `nix run .` will see the file.

**Testing your new configuration**

To test your configuration simply run the following command

```sh
$ nix run .
```

**Running remotely**

You can run this Neovim configuration directly from GitHub without cloning the repository:

```sh
$ nix run github:maschwanden/nixvim-config
```

## Plugins

| Plugin | Description |
|--------|-------------|
| **LSP** | Language server support for Python (pyright), Nix (nil), Go (gopls), Rust (rust-analyzer), Lua, Bash, C/C++ (clangd), HTML, YAML, Markdown, and Docker |
| **nvim-cmp** | Completion engine with sources for LSP, buffer text, file paths, snippets, emoji, and database |
| **Telescope** | Fuzzy finder for files, text search (live grep), git commits, recent files, and buffers |
| **Treesitter** | Advanced syntax highlighting and code-aware folding |
| **Conform** | Code formatting |
| **Flash** | Fast navigation/jump motions to any visible location |
| **Trouble** | Diagnostics and quickfix list panel |
| **Fidget** | LSP progress indicator |
| **Oil** | Lightweight file browser that edits the filesystem like a buffer |
| **Bufferline** | Buffer/tab bar at the top of the editor |
| **Lualine** | Status bar at the bottom |
| **Catppuccin** | Color scheme (with transparent background) |
| **Web-devicons** | Nerd font file icons |
| **Image** | Image preview support |
| **vim-dadbod** | Database client UI (with vim-dadbod-ui and completion) |

| **nvim-interestingwords** | Highlight words with distinct colors |

## Hotkeys

> **Note:** This configuration remaps the home row for navigation (Colemak-DH inspired): **m** = left, **n** = down, **e** = up, **i** = right. The leader key is **Space**.

### Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `m` / `n` / `e` / `i` | n, v | Move left / down / up / right |
| `Ctrl-n` / `Ctrl-e` | n, v | Page down / Page up |
| `h` / `H` | n, v | Enter insert mode / Insert at line start |
| `k` / `K` | n, v | Search next / previous match |
| `j` | n | Set mark |
| `,,` | n | Jump to last opened file |
| `Ctrl-w` + `m`/`n`/`e`/`i` | n | Navigate to left / down / up / right window |

### Editing & Folding

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>r` | n | Replace word under cursor (all occurrences) |
| `<leader>c` | n | Close current window |
| `zz` | n | Toggle fold recursively |
| `<leader>zo` / `<leader>zc` | n | Open / Close all folds |

### Telescope (Fuzzy Finder)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>tf` | n | Find files |
| `<leader>ts` | n | Live grep (search text in files) |
| `<leader>tb` | n | Switch buffers |
| `<leader>th` | n | Recent files (oldfiles) |
| `<leader>tc` | n | Search git commits |

### LSP

| Key | Mode | Description |
|-----|------|-------------|
| `ld` | n | Go to definition |
| `lr` | n | Show references |
| `li` | n | Go to implementation |
| `lt` | n | Go to type definition |
| `lh` | n | Hover documentation |
| `la` | n | Code actions |
| `<F2>` | n | Rename symbol |
| `gl` | n, v | Open diagnostic float |
| `<leader>l[` / `<leader>l]` | n | Previous / Next diagnostic |

### Flash (Jump Motions)

| Key | Mode | Description |
|-----|------|-------------|
| `s` | n, x, o | Flash jump to any location |
| `S` | n | Flash treesitter search |
| `r` | o | Remote flash (operator mode) |

### Bufferline (Buffer Management)

| Key | Mode | Description |
|-----|------|-------------|
| `Tab` / `Shift-Tab` | n | Cycle to next / previous buffer |
| `Shift-n` / `Shift-e` | n | Cycle to next / previous buffer |

### File & Database

| Key | Mode | Description |
|-----|------|-------------|
| `-` | n | Open Oil file browser |
| `<leader>d` | n | Open database UI (Dadbod) |

### Diagnostics & Highlighting

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>xx` | n | Open Trouble diagnostics panel |
| `<leader>k` | n | Highlight word under cursor with color |
| `<leader>K` | n | Remove word highlighting |

### Completion (nvim-cmp, in insert mode)

| Key | Description |
|-----|-------------|
| `Tab` / `Shift-Tab` | Next / Previous completion item |
| `Ctrl-Space` | Trigger completion |
| `Enter` | Confirm selection |
| `Shift-Enter` | Confirm with replace behavior |
