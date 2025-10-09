return {
  "xero/miasma.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "folke/tokyonight.nvim", -- Your YAML theme
  },
  config = function()
    -- Set default theme
    vim.cmd("colorscheme miasma")

    -- Store the current theme to avoid unnecessary switches
    local current_theme = "miasma"
    local yaml_theme = "tokyonight" -- Change this to your preferred YAML theme

    -- Function to switch themes
    local function switch_theme(theme)
      if current_theme ~= theme then
        vim.cmd("colorscheme " .. theme)
        current_theme = theme
      end
    end

    -- Apply YAML theme when entering YAML buffers
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
      pattern = "*.yml,*.yaml",
      callback = function()
        switch_theme(yaml_theme)
      end,
    })

    -- Restore default theme for non-YAML files
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
      pattern = "*",
      callback = function()
        if not vim.tbl_contains({ "yaml", "yml" }, vim.bo.filetype) then
          switch_theme("miasma")
        end
      end,
    })
  end
}
