local cwd = vim.fn.getcwd()

-- setup for javascript projects
local node_modules_bin = cwd .. "/node_modules/.bin"
if vim.fn.isdirectory(node_modules_bin) then
  vim.env.PATH = require("sb.utils").PrependToPath(node_modules_bin)
end
