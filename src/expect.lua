-- # Expect

-- ## Modules

local should = require('should')

-- ## expect
--
-- The namespace.
--
local expect = {}

-- ### expect:new
--
-- Create a new instance of `expect` and assign `actual`
-- to `self.__actual`.
--
-- - `actual` is anything testable.
--
function expect:new(actual)
  local obj = {}
  setmetatable(obj, self)
  self.__index = self
  self.__actual = actual
  return obj
end

-- ### Assertions

-- #### expect:toEqual
--
-- A wrapper for `should.Equal`.
--
-- - `expected` is a value.
-- - `message`  is a string.
--
function expect:toEqual(expected, message)
  should.Equal(self.__actual, expected, message)
end

-- #### expect:toEql
--
-- A wrapper for `should.Eql`.
--
-- - `expected` is a table.
-- - `message`  is a string.
--
function expect:toEql(expected, message)
  should.Eql(self.__actual, expected, message)
end

-- #### expect:toBeType
--
-- A wrapper for `should.be.Type`.
--
-- - `expected` is a string.
-- - `message`  is a string.
--
function expect:toBeType(expected, message)
  should.be.Type(self.__actual, expected, message)
end

-- #### expect:toBeTrue
--
-- A wrapper for `should.be.True`.
--
-- - `message` is a string.
--
function expect:toBeTrue(message)
  should.be.True(self.__actual, message)
end

-- #### expect:toBeFalse
--
-- A wrapper for `should.be.False`.
--
-- - `message` is a string.
--
function expect:toBeFalse(message)
  should.be.False(self.__actual, message)
end

-- #### expect:toBeNil
--
-- A wrapper for `should.be.Nil`.
--
-- - `message` is a string.
--
function expect:toBeNil(message)
  should.be.Nil(self.__actual, message)
end

-- #### expect:toBeBlank
--
-- A wrapper for `should.be.Blank`.
--
-- - `message` is a string.
--
function expect:toBeBlank(message)
  should.be.Blank(self.__actual, message)
end

-- #### expect:toBeEmpty
--
-- A wrapper for `should.be.Empty`.
--
-- - `message` is a string.
--
function expect:toBeEmpty(message)
  should.be.Empty(self.__actual, message)
end

-- #### expect:toBeAbove
--
-- A wrapper for `should.be.Above`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:toBeAbove(expected, message)
  should.be.Above(self.__actual, expected, message)
end

-- #### expect:toBeGte
--
-- A wrapper for `should.be.Gte`.
--
-- - `expected` is a number.
--
function expect:toBeGte(expected, message)
  should.be.Gte(self.__actual, expected, message)
end

-- #### expect:toBeBelow
--
-- A wrapper for `should.be.Below`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:toBeBelow(expected, message)
  should.be.Below(self.__actual, expected, message)
end

-- #### expect:toBeLte
--
-- A wrapper for `should.be.Lte`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:toBeLte(expected, message)
  should.be.Lte(self.__actual, expected, message)
end

-- #### expect:toMatch
--
-- A wrapper for `should.Match`.
--
-- - `expected` is a string.
-- - `message`  is a string.
--
function expect:toMatch(expected, message)
  should.Match(self.__actual, expected, message)
end

-- #### expect:toHaveProperty
--
-- A wrapper for `should.have.Property`.
--
-- - `expected` is a table or a string.
-- - `message`  is a string.
--
function expect:toHaveProperty(expected, message)
  should.have.Property(self.__actual, expected, message)
end

-- #### expect:toHaveError
--
-- A wrapper for `should.be.Error`.
--
-- - `message` is a string.
--
function expect:toHaveError(message)
  should.have.Error(self.__actual, message)
end

-- #### expect:notToEqual
--
-- A wrapper for `should.Not.Equal`.
--
-- - `expected` is a value.
-- - `message`  is a string.
--
function expect:notToEqual(expected, message)
  should.Not.Equal(self.__actual, expected, message)
end

-- #### expect:notToEql
--
-- A wrapper for `should.Not.Eql`.
--
-- - `expected` is a table.
-- - `message`  is a string.
--
function expect:notToEql(expected, message)
  should.Not.Eql(self.__actual, expected, message)
end

-- #### expect:notToBeType
--
-- A wrapper for `should.Not.be.Type`.
--
-- - `expected` is a type.
-- - `message`  is a string.
--
function expect:notToBeType(expected, message)
  should.Not.be.Type(self.__actual, expected, message)
end

-- #### expect:notToBeTrue
--
-- A wrapper for `should.Not.be.True`.
--
-- - `message` is a string.
--
function expect:notToBeTrue(message)
  should.Not.be.True(self.__actual, message)
end

-- #### expect:notToBeFalse
--
-- A wrapper for `should.Not.be.False`.
--
-- - `message` is a string.
--
function expect:notToBeFalse(message)
  should.Not.be.False(self.__actual, message)
end

-- #### expect:notToBeNil
--
-- A wrapper for `should.Not.be.Nil`.
--
-- - `message` is a string.
--
function expect:notToBeNil(message)
  should.Not.be.Nil(self.__actual, message)
end

-- #### expect:notToBeBlank
--
-- A wrapper for `should.Not.be.Blank`.
--
-- - `message` is a string.
--
function expect:notToBeBlank(message)
  should.Not.be.Blank(self.__actual, message)
end

-- #### expect:notToBeEmpty
--
-- A wrapper for `should.Not.be.Empty`.
--
-- - `message` is a string.
--
function expect:notToBeEmpty(message)
  should.Not.be.Empty(self.__actual, message)
end

-- #### expect:notToBeAbove
--
-- A wrapper for `should.Not.be.Above`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:notToBeAbove(expected, message)
  should.Not.be.Above(self.__actual, expected, message)
end

-- #### expect:notToBeGte
--
-- A wrapper for `should.Not.be.Gte`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:notToBeGte(expected, message)
  should.Not.be.Gte(self.__actual, expected, message)
end

-- #### expect:notToBeBelow
--
-- A wrapper for `should.Not.be.Below`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:notToBeBelow(expected, message)
  should.Not.be.Below(self.__actual, expected, message)
end

-- #### expect:notToBeLte
--
-- A wrapper for `should.Not.be.Lte`.
--
-- - `expected` is a number.
-- - `message`  is a string.
--
function expect:notToBeLte(expected, message)
  should.Not.be.Lte(self.__actual, expected, message)
end

-- #### expect:notToMatch
--
-- A wrapper for `should.Not.Match`.
--
-- - `expected` is a string.
-- - `message`  is a string.
--
function expect:notToMatch(expected, message)
  should.Not.Match(self.__actual, expected, message)
end

-- #### expect:notToHaveProperty
--
-- A wrapper for `should.Not.have.Property`.
--
-- - `expected` is a table or a string.
-- - `message`  is a string.
--
function expect:notToHaveProperty(expected, message)
  should.Not.have.Property(self.__actual, expected, message)
end

-- #### expect:notToHaveError
--
-- A wrapper for `should.Not.have.Error`.
--
-- - `message` is a string.
--
function expect:notToHaveError(message)
  should.Not.have.Error(self.__actual, message)
end

-- ## Exports
--
-- Export `expect.new` as a Lua module.
--
return setmetatable(expect, {
  __call = expect.new
})
