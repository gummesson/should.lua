-- # Util

-- ## Modules

local inspect = require('inspect')
local colors  = require('ansicolors')

-- ## util
--
-- The namespace.
--
local util = {}

-- ### References

local type, pairs, pcall = type, pairs, pcall
local next, tostring     = next, tostring

-- ### util.assertMsg
--
-- Return a formatted assertion message.
--
-- - `actual`   is a value.
-- - `expected` is a value.
--
-- - `NoEql` is an internal hack for appending "not" to `expected`
--   if it's a table.
--
function util.assertMsg(actual, expected, noEql)
  if type(actual) == 'table' then
    actual = inspect(actual)
  end
  if type(expected) == 'table' then
    if noEql then
      expected = 'not ' .. inspect(expected)
    else
      expected = inspect(expected)
    end
  end
  local actMsg  = '\n' .. '  Actual: ' .. colors('%{red}' .. tostring(actual))
  local expMsg  = '\n' .. 'Expected: ' .. colors('%{green}' .. tostring(expected))
  local asrtMsg = '\n' .. actMsg .. expMsg
  return asrtMsg
end

-- ### util.compare
--
-- Do a deep comparsion between the `actual` and the `expected` table.
--
-- - `actual`   is an table.
-- - `expected` is an table.
--
function util.compare(actual, expected)
  if actual == expected then
    return true
  end
  if type(actual) ~= 'table' or type(expected) ~= 'table' then
    return false
  end
  for i, value in pairs(actual) do
    local key = expected[i]
    if value ~= key and not util.compare(value, key) then
      return false
    end
  end
  for i, _ in pairs(expected) do
    if actual[i] == nil then
      return false
    end
  end
  return true
end

-- ### util.throws(actual)
--
-- Determine if the `actual` has any errors.
--
-- - `actual` is a function.
--
function util.throws(actual)
  return not pcall(actual)
end

-- ### util.blank(actual)
--
-- Determine if `actual` is blank.
--
-- - `actual` is a value.
--
function util.blank(actual)
  return actual == '' or actual == nil
end

-- ### util.empty(actual)
--
-- Determine if `actual` is empty.
--
-- - `actual` is a table.
--
function util.empty(actual)
  return not next(actual)
end

-- ### util.above(actual, expected)
--
-- Determine if `actual` is greater than `expected`.
--
-- - `actual`   is a number.
-- - `expected` is a number.
--
function util.above(actual, expected)
  return actual > expected
end

-- ### util.gte(actual, expected)
--
-- Determine if `actual` is greater than or equal to `expected`.
--
-- - `actual`   is a number.
-- - `expected` is a number.
--
function util.gte(actual, expected)
  return actual >= expected
end

-- ### util.below(actual, expected)
--
-- Determine if `actual` is less than `expected`.
--
-- - `actual`   is a number.
-- - `expected` is a number.
--
function util.below(actual, expected)
  return actual < expected
end

-- ### util.lte(actual, expected)
--
-- Determine if `actual` is less than or equal to `expected`.
--
-- - `actual`   is a number.
-- - `expected` is a number.
--
function util.lte(actual, expected)
  return actual <= expected
end

-- ### util.match(actual, expected)
--
-- Determine if `actual` match `expected`.
--
-- - `actual`   is a string.
-- - `expected` is a string.
--
function util.match(actual, expected)
  return (tostring(actual)):match(expected)
end

-- ### util.property(actual, expected)
--
-- Detemine if `actual` have the property `expected`.
--
-- - `actual`   is a table.
-- - `expected` is table or a string.
--
function util.property(actual, expected)
  if type(actual) ~= 'table' then
    return false
  end
  if type(expected) == 'string' then
    for key, _ in pairs(actual) do
      if key == expected then
        return true
      end
    end
  end
  if type(expected) == 'table' then
    for key, value in pairs(actual) do
      if value == expected[key] then
        return true
      end
    end
  end
  return false
end

-- ## Exports
--
-- Export `util` as a Lua module.
--
return util
