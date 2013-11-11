-- Modules

local expect = require('expect')

-- Tests

describe('expect', function()
  describe(':toEqual()', function()
    it('should handle "true == true', function()
      local results = true
      expect(true):toEqual(true)
      expect(results):toEqual(true)
    end)

    it('should handle "false == false', function()
      local results = false
      expect(false):toEqual(false)
      expect(results):toEqual(false)
    end)

    it('should handle "nil == nil', function()
      local results = nil
      expect(nil):toEqual(nil)
      expect(results):toEqual(nil)
    end)

    it('should handle "\'Hello\' == \'Hello\'"', function()
      local results = 'Hello'
      expect('Hello'):toEqual('Hello')
      expect(results):toEqual('Hello')
    end)

    it('should handle "1 == 1"', function()
      local results = 1
      expect(1):toEqual(1)
      expect(results):toEqual(1)
    end)
  end)

  describe(':toEql()', function()
    it('should handle "{1, 2, 3} == {1, 2, 3}"', function()
      local results = {1, 2, 3}
      expect({1, 2, 3}):toEql({1, 2, 3})
      expect(results):toEql({1, 2, 3})
    end)

    it('should handle "{a = 1, b = 2, c = 3} == {a = 1, b = 2, c = 3}"', function()
      local results = {a = 1, b = 2, c = 3}
      expect({a = 1, b = 2, c = 3}):toEql({a = 1, b = 2, c = 3})
      expect(results):toEql({a = 1, b = 2, c = 3})
    end)
  end)

  describe(':toBeType()', function()
    it('should handle "string"', function()
      local results = 'Hello'
      expect('Hello'):toBeType('string')
      expect(results):toBeType('string')
    end)

    it('should handle "number"', function()
      local results = 1
      expect(1):toBeType('number')
      expect(results):toBeType('number')
    end)

    it('should handle "table"', function()
      local results = {}
      expect({}):toBeType('table')
      expect(results):toBeType('table')
    end)

    it('should handle "boolean"', function()
      local results = true
      expect(true):toBeType('boolean')
      expect(results):toBeType('boolean')
    end)

    it('should handle "nil"', function()
      local results = nil
      expect(nil):toBeType('nil')
      expect(results):toBeType('nil')
    end)

    it('should handle "function"', function()
      local results = function() end
      expect(function() end):toBeType('function')
      expect(results):toBeType('function')
    end)
  end)

  describe(':toBeTrue()', function()
    it('should handle "true"', function()
      local results = true
      expect(true):toBeTrue()
      expect(results):toBeTrue()
    end)
  end)

  describe(':toBeFalse()', function()
    it('should handle "false"', function()
      local results = false
      expect(false):toBeFalse()
      expect(results):toBeFalse()
    end)
  end)

  describe(':toBeNil()', function()
    it('should handle "nil"', function()
      local results = nil
      expect(nil):toBeNil()
      expect(results):toBeNil()
    end)
  end)

  describe(':toBeError()', function()
    it('should handle errors', function()
      local results = function() error('Abort!') end
      expect(function() error('Abort!') end):toBeError()
      expect(results):toBeError()
    end)
  end)

  describe(':toBeBlank()', function()
    it('should handle \'\'', function()
      local results = ''
      expect(''):toBeBlank()
      expect(results):toBeBlank()
    end)

    it('should handle "nil"', function()
      local results = nil
      expect(nil):toBeBlank()
      expect(results):toBeBlank()
    end)
  end)

  describe(':toBeEmpty()', function()
    it('should handle "{}"', function()
      local results = {}
      expect({}):toBeEmpty()
      expect(results):toBeEmpty()
    end)
  end)

  describe(':toBeAbove()', function()
    it('should handle "2 > 1"', function()
      local results = 2
      expect(2):toBeAbove(1)
      expect(results):toBeAbove(1)
    end)
  end)

  describe(':toBeGte()', function()
    it('should handle "2 >= 1"', function()
      local results = 2
      expect(2):toBeGte(1)
      expect(results):toBeGte(1)
    end)

    it('should handle "1 >= 1"', function()
      local results = 1
      expect(1):toBeGte(1)
      expect(results):toBeGte(1)
    end)
  end)

  describe(':toBeBelow()', function()
    it('should handle "1 < 2"', function()
      local results = 1
      expect(1):toBeBelow(2)
      expect(results):toBeBelow(2)
    end)
  end)

  describe(':toBeLte()', function()
    it('should handle "1 <= 2"', function()
      local results = 1
      expect(1):toBeLte(2)
      expect(results):toBeLte(2)
    end)

    it('should handle "2 <= 2"', function()
      local results = 2
      expect(2):toBeLte(2)
      expect(results):toBeLte(2)
    end)
  end)

  describe(':toMatch()', function()
    it('should handle "\'Hello world\' == /world/"', function()
      local results = 'Hello world'
      expect('Hello world'):toMatch('world')
      expect(results):toMatch('world')
    end)
  end)

  describe(':toHaveProperty()', function() 
    it('should handle "{one = 1, two = 2} == \'two\'"', function()
      local results = {one = 1, two = 2}
      expect({one = 1, two = 2}):toHaveProperty('two') 
      expect(results):toHaveProperty('two') 
    end)

    it('should handle "{one = 1, two = 2} == {two = 2}"', function()
      local results = {one = 1, two = 2}
      expect({one = 1, two = 2}):toHaveProperty({ two = 2 }) 
      expect(results):toHaveProperty({ two = 2 }) 
    end)
  end)
end)
