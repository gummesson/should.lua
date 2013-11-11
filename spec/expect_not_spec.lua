-- Modules

local expect = require('expect')

-- Tests

describe('expect', function()
  describe(':notToEqual()', function()
    it('should handle "true ~= false', function()
      local results = true
      expect(true):notToEqual(false)
      expect(results):notToEqual(false)
    end)

    it('should handle "false ~= true', function()
      local results = false
      expect(false):notToEqual(true)
      expect(results):notToEqual(true)
    end)

    it('should handle "nil ~= 0', function()
      local results = nil
      expect(nil):notToEqual(0)
      expect(results):notToEqual(0)
    end)

    it('should handle "\'Hello\' ~= \'world\'"', function()
      local results = 'Hello world'
      expect('Hello world'):notToEqual('world')
      expect(results):notToEqual('world')
    end)

    it('should handle "1 ~= 2', function()
      local results = 1
      expect(1):notToEqual(2)
      expect(results):notToEqual(2)
    end)
  end)

  describe(':notToEql()', function()
    it('should handle "{1, 2, 3} ~= {4, 5, 6}"', function()
      local results = {1, 2, 3}
      expect({1, 2, 3}):notToEql({4, 5, 6})
      expect(results):notToEql({4, 5, 6})
    end)

    it('should handle "{a = 1, b = 2, c = 3} ~= {a = 4, b = 5, c = 6}"', function()
      local results = {a = 1, b = 2, c = 3}
      expect({a = 1, b = 2, c = 3}):notToEql({a = 4, b = 5, c = 6})
      expect(results):notToEql({a = 4, b = 5, c = 6})
    end)
  end)

  describe(':notToBeType()', function()
    it('should handle "not function"', function()
      local results = 'Hello'
      expect('Hello'):notToBeType('function')
      expect(results):notToBeType('function')
    end)

    it('should handle "not string"', function()
      local results = 1
      expect(1):notToBeType('string')
      expect(results):notToBeType('string')
    end)

    it('should handle "not number"', function()
      local results = {}
      expect({}):notToBeType('number')
      expect(results):notToBeType('number')
    end)

    it('should handle "not table"', function()
      local results = true
      expect(true):notToBeType('table')
      expect(results):notToBeType('table')
    end)

    it('should handle "not boolean"', function()
      local results = nil
      expect(nil):notToBeType('boolean')
      expect(results):notToBeType('boolean')
    end)

    it('should handle "not nil"', function()
      local results = function() end
      expect(function() end):notToBeType('nil')
      expect(results):notToBeType('nil')
    end)
  end)

  describe(':notToBeTrue()', function()
    it('should handle "false"', function()
      local results = false
      expect(false):notToBeTrue()
      expect(results):notToBeTrue()
    end)

    it('should handle "nil"', function()
      local results = nil
      expect(nil):notToBeTrue()
      expect(results):notToBeTrue()
    end)
  end)

  describe(':notToBeFalse()', function()
    it('should handle "true"', function()
      local results = true
      expect(true):notToBeFalse()
      expect(results):notToBeFalse()
    end)

    it('should handle "nil"', function()
      local results = nil
      expect(nil):notToBeFalse()
      expect(results):notToBeFalse()
    end)
  end)

  describe(':notToBeNil()', function()
    it('should handle "true"', function()
      local results = true
      expect(true):notToBeNil()
      expect(results):notToBeNil()
    end)

    it('should handle "false"', function()
      local results = false
      expect(false):notToBeNil()
      expect(results):notToBeNil()
    end)
  end)

  describe(':notToBeBlank()', function()
    it('should handle "Hello world"', function()
      local results = 'Hello world'
      expect('Hello world'):notToBeBlank()
      expect(results):notToBeBlank()
    end)

    it('should handle "true"', function()
      local results = true
      expect(true):notToBeBlank()
      expect(results):notToBeBlank()
    end)
  end)

  describe(':notToBeEmpty()', function()
    it('should handle {1}', function()
      local results = {1}
      expect({1}):notToBeEmpty()
      expect(results):notToBeEmpty()
    end)

    it('should handle {one = 1}', function()
      local results = {one = 1}
      expect({one = 1}):notToBeEmpty()
      expect(results):notToBeEmpty()
    end)
  end)

  describe(':notToBeAbove()', function()
    it('should handle "1 < 2"', function()
      local results = 1
      expect(1):notToBeAbove(2)
      expect(results):notToBeAbove(2)
    end)
  end)

  describe(':notToBeGte()', function()
    it('should handle "1 <= 2"', function()
      local results = 1
      expect(1):notToBeGte(2)
      expect(results):notToBeGte(2)
    end)
  end)

  describe(':notToBeBelow()', function()
    it('should handle "2 > 1"', function()
      local results = 2
      expect(2):notToBeBelow(1)
      expect(results):notToBeBelow(1)
    end)
  end)

  describe(':notToBeLte()', function()
    it('should handle "2 >= 1"', function()
      local results = 2
      expect(2):notToBeLte(1)
      expect(results):notToBeLte(1)
    end)
  end)

  describe(':notToMatch()', function()
    it('should handle "\'Hello world\' ~= \'test\'"', function()
      local results = 'Hello world'
      expect('Hello world'):notToMatch('test')
      expect(results):notToMatch('test')
    end)
  end)

  describe(':notToHaveProperty()', function()
    it('should handle "{ one = 1, two = 2 } ~= \'three\'"', function()
      local results = {one = 1, two = 2}
      expect({one = 1, two = 2}):notToHaveProperty('three')
      expect(results):notToHaveProperty('three')
    end)

    it('should handle "{one = 1, two = 2} ~= {three = 3}"', function()
      local results = {one = 1, two = 2}
      expect({one = 1, two = 2}):notToHaveProperty({three = 3})
      expect(results):notToHaveProperty({three = 3})
    end)
  end)

  describe(':notToHaveError()', function()
    it('should handle non errors', function()
      local results = function() end
      expect(function() end):notToHaveError()
      expect(results):notToHaveError()
    end)
  end)
end)
