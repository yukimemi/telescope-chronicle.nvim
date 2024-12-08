-- =============================================================================
-- File        : chronicle.lua
-- Author      : yukimemi
-- Last Change : 2024/12/08 11:56:36.
-- =============================================================================

local chronicle = require("telescope_chronicle")

return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- access extension config and user config
  end,
  exports = {
    read = chronicle.chronicle_read,
    write = chronicle.chronicle_write,
  },
}
