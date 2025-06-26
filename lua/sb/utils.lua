local exports = {}

local function PrependToPath(update)
  local path = {}
  table.insert(path, update)
  for p in string.gmatch(vim.env.PATH, "([^:]+):?") do
    table.insert(path, p)
  end

  return table.concat(path, ":")
end

exports.PrependToPath = PrependToPath

return exports
