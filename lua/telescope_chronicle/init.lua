-- =============================================================================
-- File        : init.lua
-- Author      : yukimemi
-- Last Change : 2024/12/08 10:57:03.
-- =============================================================================

local conf = require("telescope.config").values
local finders = require "telescope.finders"
local make_entry = require "telescope.make_entry"
local pickers = require("telescope.pickers")

local M = {}

local chronicle = function (opts, mode)
  mode = mode or "read"
  opts = opts or {}
  local path = mode == "read" and vim.g.chronicle_read_path or vim.g.chronicle_write_path
  pickers.new(opts, {
    prompt_title = "chronicle " .. mode,
    finder = finders.new_table({
      results = vim.fn.readfile(path),
      entry_maker = opts.entry_maker or make_entry.gen_from_file(opts),
    }),
    sorter = conf.generic_sorter(opts),
    previewer = conf.file_previewer(opts),
  }):find()
end

M.chronicle_read = function(opts)
  chronicle(opts, "read")
end

M.chronicle_write = function(opts)
  chronicle(opts, "write")
end

return M
