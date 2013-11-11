--
-- # should
--
-- **Should** is a library that brings BDD-style assertions to Lua.
--
-- **License:** MIT  
--  **Source:** [GitHub](https://github.com/gummesson/should.lua)
--

-- ## Modules

local util = require('should.util')

-- ## should
--
-- The namespace.
--
local should = {}

-- ### References

local assert, type = assert, type

local assertMsg = util.assertMsg
local compare   = util.compare
local throws    = util.throws
local blank     = util.blank
local empty     = util.empty
local above     = util.above
local gte       = util.gte
local below     = util.below
local lte       = util.lte
local match     = util.match
local property  = util.property

-- ### Namespaces
--
-- Use tables to create namespaces for the assertions.
--
should.be       = {}
should.have     = {}
should.Not      = {}
should.Not.be   = {}
should.Not.have = {}

-- ### Assertions

-- #### should.Equal
--
-- Determine if `actual` is equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a value.
-- - `expected` is a value.
-- - `message`  is a string.
--
function should.Equal(actual, expected, message)
  message = message or assertMsg(actual, expected, false)
  assert(actual == expected, message)
end

-- #### should.Eql
--
-- Determine if the `actual` is equal to `expected` by doing
-- a deep comparsion between them.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a table.
-- - `expected` is a table.
-- - `message`  is a string.
--
function should.Eql(actual, expected, message)
  message = message or assertMsg(actual, expected, false)
  assert(compare(actual, expected) == true, message)
end

-- #### should.be.Type
--
-- Determine if `actual` is a `type`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a type.
-- - `expected` is a string.
-- - `message`  is a string.
--
function should.be.Type(actual, expected, message)
  actual  = type(actual)
  message = message or assertMsg(actual, expected, false)
  assert(actual == expected, message)
end

-- #### should.be.True
--
-- Determine if `actual` is `true`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.be.True(actual, message)
  message = message or assertMsg(actual, true, false)
  assert(actual == true, message)
end

-- #### should.be.False
--
-- Determine if `actual` is `false`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.be.False(actual, message)
  message = message or assertMsg(actual, false, false)
  assert(actual == false, message)
end

-- #### should.be.Nil
--
-- Determine if `actual` is `nil`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.be.Nil(actual, message)
  message = message or assertMsg(actual, nil, false)
  assert(actual == nil, message)
end

-- #### should.be.Error
--
-- Determine if `actual` returns an error.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a function.
-- - `message` is a string.
--
function should.be.Error(actual, message)
  message = message or assertMsg('not error', 'error', false)
  assert(throws(actual) == true, message)
end

-- #### should.be.Blank
--
-- Determine if `actual` is blank.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.be.Blank(actual, message)
  message = message or assertMsg(actual, '\'\' or nil', false)
  assert(blank(actual) == true, message)
end

-- #### should.be.Empty
--
-- Determine if `actual` is empty.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a table.
-- - `message` is a string.
--
function should.be.Empty(actual, message)
  message = message or assertMsg(actual, '{ }', false)
  assert(empty(actual) == true, message)
end

-- #### should.be.Above
--
-- Determine if `actual` is greater than `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.be.Above(actual, expected, message)
  message = message or assertMsg(actual .. ' < ' .. expected, actual .. ' > ' .. expected, false)
  assert(above(actual, expected) == true, message)
end

-- #### should.be.Gte
--
-- Determine if `actual` is greater than or equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.be.Gte(actual, expected, message)
  message = message or assertMsg(actual .. ' <= ' .. expected, actual .. ' >= ' .. expected, false)
  assert(gte(actual, expected) == true, message)
end

-- #### should.be.Below
--
-- Determine if `actual` is less than `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a number.
-- - `expected`   is a number.
-- - `message` is a string.
--
function should.be.Below(actual, expected, message)
  message = message or assertMsg(actual .. ' > ' .. expected, actual .. ' < ' .. expected, false)
  assert(below(actual, expected) == true, message)
end

-- #### should.be.Lte
--
-- Determine if `actual` is less than or equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a number.
-- - `expected`   is a number.
-- - `message` is a string.
--
function should.be.Lte(actual, expected, message)
  message = message or assertMsg(actual .. ' >= ' .. expected, actual .. ' <= ' .. expected, false)
  assert(lte(actual, expected) == true, message)
end

-- #### should.Match
--
-- Determine if `actual` match `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a string.
-- - `expected` is a string.
-- - `message`  is a string.
--
function should.Match(actual, expected, message)
  message = message or assertMsg(actual, '/' .. expected .. '/', false)
  assert(match(actual, expected) ~= nil, message)
end

-- #### should.have.Property
--
-- Determine if `actual` have the property `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a table.
-- - `expected` is table or a string.
-- - `message`  is a string.
--
function should.have.Property(actual, expected, message)
  message = message or assertMsg('nil', expected, false)
  assert(property(actual, expected) == true, message)
end

-- #### should.Not.Equal
--
-- Determine if `actual` is not equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a value.
-- - `expected` is a value.
-- - `message`  is a string.
--
function should.Not.Equal(actual, expected, message)
  message = message or assertMsg(actual, expected, true)
  assert(actual ~= expected, message)
end

-- #### should.Not.Eql
--
-- Determine if the `actual` is not equal to the `expected` by doing
-- a deep comparsion between them.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a table.
-- - `expected` is a table.
-- - `message`  is a string.
--
function should.Not.Eql(actual, expected, message)
  message = message or assertMsg(actual, expected, true)
  assert(compare(actual, expected) == false, message)
end

-- #### should.Not.be.Type
--
-- Determine if `actual` is not a `type`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a type.
-- - `expected` is a string.
--
function should.Not.be.Type(actual, expected, message)
  actual  = type(actual)
  message = message or assertMsg(actual, expected, true)
  assert(actual ~= expected, message)
end

-- #### should.Not.be.True
--
-- Determine if `actual` is not `true`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.Not.be.True(actual, message)
  message = message or assertMsg(actual, 'true', true)
  assert(actual ~= true, message)
end

-- #### should.Not.be.False
--
-- Determine if `actual` is not `false`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.Not.be.False(actual, message)
  message = message or assertMsg(actual, 'false', true)
  assert(actual ~= false, message)
end

-- #### should.not.be.Nil
--
-- Determine if `actual` is not `nil`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.Not.be.Nil(actual, message)
  message = message or assertMsg(actual, 'nil', true)
  assert(actual ~= nil, message)
end

-- #### should.Not.be.Error
--
-- Determine if `actual` doesn't return an error.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a function.
-- - `message` is a string.
--
function should.Not.be.Error(actual, message)
  message = message or assertMsg('error', 'error', true)
  assert(throws(actual) == false, message)
end

-- #### should.Not.be.Blank
--
-- Determine if `actual` is not blank.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a value.
-- - `message` is a string.
--
function should.Not.be.Blank(actual, message)
  message = message or assertMsg(actual, '\'\' or nil', true)
  assert(blank(actual) == false, message)
end

-- #### should.Not.be.Empty
--
-- Determine if `actual` is not empty.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`  is a table.
-- - `message` is a string.
--
function should.Not.be.Empty(actual, message)
  message = message or assertMsg(actual, 'empty', true)
  assert(empty(actual) == false, message)
end

-- #### should.Not.be.Above
--
-- Determine if `actual` is not greater than `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.Not.be.Above(actual, expected, message)
  message = message or assertMsg(actual .. ' > ' .. expected, actual .. ' < ' .. expected, false)
  assert(above(actual, expected) == false, message)
end

-- #### should.Not.be.Gte
--
-- Determine if `actual` is not greater than or equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.Not.be.Gte(actual, expected, message)
  message = message or assertMsg(actual .. ' >= ' .. expected, actual .. ' <= ' .. expected, false)
  assert(gte(actual, expected) == false, message)
end

-- #### should.Not.be.Below
--
-- Determine if `actual` is not less than `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.Not.be.Below(actual, expected, message)
  message = message or assertMsg(actual .. ' < ' .. expected, actual .. ' > ' .. expected, false)
  assert(below(actual, expected) == false, message)
end

-- #### should.Not.be.Lte
--
-- Determine if `actual` is not less than or equal to `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a number.
-- - `expected` is a number.
-- - `message`  is a string.
--
function should.Not.be.Lte(actual, expected, message)
  message = message or assertMsg(actual .. ' <= ' .. expected, actual .. ' >= ' .. expected, false)
  assert(lte(actual, expected) == false, message)
end

-- #### should.Not.Match
--
-- Determine if `actual` doesn't match `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a string.
-- - `expected` is a string.
-- - `message`  is a string.
--
function should.Not.Match(actual, expected, message)
  message = message or assertMsg(actual, '/' .. expected .. '/', true)
  assert(match(actual, expected) == nil, message)
end

-- #### should.Not.have.Property
--
-- Determine if `actual` doesn't have the property `expected`.
--
-- The `message` will be displayed if the assertion fails.
--
-- - `actual`   is a table.
-- - `expected` is table or a string.
-- - `message`  is a string.
--
function should.Not.have.Property(actual, expected, message)
  message = message or assertMsg(expected, 'nil', false)
  assert(property(actual, expected) == false, message)
end

-- ## Exports
--
-- Export `should` as a Lua module.
--
return should
