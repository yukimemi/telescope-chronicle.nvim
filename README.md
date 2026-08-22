# telescope-chronicle.nvim

This is a [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) source for [chronicle.vim](https://github.com/yukimemi/chronicle.vim).

# Requirements

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [yukimemi/chronicle.vim](https://github.com/yukimemi/chronicle.vim)

# Install

With [rvpm](https://github.com/yukimemi/rvpm) (recommended):

```sh
rvpm add yukimemi/telescope-chronicle.nvim --on-cmd '/^Telescope chronicle.*$/'
```

Or in `config.toml`:

```toml
[[plugins]]
url = "https://github.com/yukimemi/telescope-chronicle.nvim"
on_cmd = ["/^Telescope chronicle.*$/"]
```

> rvpm doesn't auto-run `setup()` / `load_extension()` — call
> `require("telescope").load_extension("chronicle")` from a hook file
> (`plugins/github.com/yukimemi/telescope-chronicle.nvim/after.lua`), or run
> `rvpm edit yukimemi/telescope-chronicle.nvim --after`.

Or with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "yukimemi/telescope-chronicle.nvim",
  cmd = { "Telescope chronicle read", "Telescope chronicle write" },
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "yukimemi/chronicle.vim",
  },
  config = function()
    require("telescope").load_extension("chronicle")
  end,
}
```

# Usage

First, load the extension.

```lua
require('telescope').load_extension('chronicle')
```

Then, open the source with `:Telescope chronicle read` or `:Telescope chronicle write`.

# License

Licensed under MIT License.

Copyright (c) 2024 yukimemi

