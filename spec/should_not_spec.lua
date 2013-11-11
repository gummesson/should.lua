-- Modules

local should = require('should')

-- Tests

describe('should', function()
  describe('.Not.Equal()', function()
    it('should handle "true ~= false"', function()
      local results = true
      should.Not.Equal(true, false)
      should.Not.Equal(results, false)
    end)

    it('should handle "false ~= true"', function()
      local results = false
      should.Not.Equal(false, true)
      should.Not.Equal(results, true)
    end)

    it('should handle "nil ~= 0"', function()
      local results = nil
      should.Not.Equal(nil, 0)
      should.Not.Equal(results, 0)
    end)

    it('should handle "\'Hello\' ~= \'world\'"', function()
      local results = 'Hello'
      should.Not.Equal('Hello', 'world')
      should.Not.Equal(results, 'world')
    end)

    it('should handle "1 ~= 2', function()
      local results = 1
      should.Not.Equal(1, 2)
      should.Not.Equal(results, 2)
    end)
  end)

  describe('.Not.Eql()', function()
    it('should handle "{1, 2, 3} ~= {4, 5, 6}"', function()
      local results = {1, 2, 3}
      should.Not.Eql({1, 2, 3}, {4, 5, 6})
      should.Not.Eql(results, {4, 5, 6})
    end)

    it('should handle "{a = 1, b = 2, c = 3} ~= {a = 4, b = 5, c = 6}"', function()
      local results = {a = 1, b = 2, c = 3}
      should.Not.Eql({a = 1, b = 2, c = 3}, {a = 4, b = 5, c = 6})
      should.Not.Eql(results, {a = 4, b = 5, c = 6})
    end)
  end)

  describe('.Not.be.Type()', function()
    it('should handle "not function"', function()
      local results = 'Hello'
      should.Not.be.Type('Hello', 'function')
      should.Not.be.Type(results, 'function')
    end)

    it('should handle "not string"', function()
      local results = 1
      should.Not.be.Type(1, 'string')
      should.Not.be.Type(results, 'string')
    end)

    it('should handle "not number"', function()
      local results = {}
      should.Not.be.Type({}, 'number')
      should.Not.be.Type(results, 'number')
    end)

    it('should handle "not table"', function()
      local results = true
      should.Not.be.Type(true, 'table')
      should.Not.be.Type(results, 'table')
    end)

    it('should handle "not boolean"', function()
      local results = nil
      should.Not.be.Type(nil, 'boolean')
      should.Not.be.Type(results, 'boolean')
    end)

    it('should handle "not nil"', function()
      local results = function() end
      should.Not.be.Type(function() end, 'nil')
      should.Not.be.Type(results, 'nil')
    end)
  end)

  describe('.Not.be.True()', function()
    it('should handle "false"', function()
      local results = false
      should.Not.be.True(false)
      should.Not.be.True(results)
    end)

    it('should handle "nil"', function()
      local results = nil
      should.Not.be.True(nil)
      should.Not.be.True(results)
    end)
  end)

  describe('.Not.be.False()', function()
    it('should handle "true"', function()
      local results = true
      should.Not.be.False(true)
      should.Not.be.False(results)
    end)

    it('should handle "nil"', function()
      local results = nil
      should.Not.be.False(nil)
      should.Not.be.False(results)
    end)
  end)

  describe('.Not.be.Nil()', function()
    it('should handle "true"', function()
      local results = true
      should.Not.be.Nil(true)
      should.Not.be.Nil(results)
    end)

    it('should handle "false"', function()
      local results = false 
      should.Not.be.Nil(false)
      should.Not.be.Nil(results)
    end)
  end)

  describe('.Not.be.Blank()', function()
    it('should handle "Hello world"', function()
      local results = 'Hello world'
      should.Not.be.Blank('Hello world')
      should.Not.be.Blank(results)
    end)

    it('should handle "true"', function()
      local results = true
      should.Not.be.Blank(true)
      should.Not.be.Blank(results)
    end)
  end)

  describe('.Not.be.Empty()', function()
    it('should handle "{1}"', function()
      local results = {1}
      should.Not.be.Empty({1})
      should.Not.be.Empty(results)
    end)

    it('should handle "{one = 1}"', function()
      local results = {one = 1}
      should.Not.be.Empty({one = 1})
      should.Not.be.Empty(results)
    end)
  end)

  describe('.Not.be.Above()', function()
    it('should handle "1 < 2"', function()
      local results = 1
      should.Not.be.Above(1, 2)
      should.Not.be.Above(results, 2)
    end)
  end)

  describe('.Not.be.Gte()', function()
    it('should handle "1 <= 2"', function()
      local results = 1
      should.Not.be.Gte(1, 2)
      should.Not.be.Gte(results, 2)
    end)
  end)

  describe('.Not.be.Below()', function()
    it('should handle "2 > 1"', function()
      local results = 2
      should.Not.be.Below(2, 1)
      should.Not.be.Below(results, 1)
    end)
  end)

  describe('.Not.be.Lte()', function()
    it('should handle "2 >= 1"', function()
      local results = 2
      should.Not.be.Lte(2, 1)
      should.Not.be.Lte(results, 1)
    end)
  end)

  describe('.Not.Match()', function()
    it('should handle "\'Hello world\' ~= \'test\'"', function()
      local results = 'Hello world'
      should.Not.Match('Hello world', 'test')
      should.Not.Match(results, 'test')
    end)
  end)

  describe('.Not.have.Property()', function()
    it('should handle "{ one = 1, two = 2 } ~= \'three\'"', function()
      local results = {one = 1, two = 2}
      should.Not.have.Property({one = 1, two = 2}, 'three')
      should.Not.have.Property(results, 'three')
    end)

    it('should handle "{one = 1, two = 2} ~= {three = 3}"', function()
      local results = {one = 1, two = 2}
      should.Not.have.Property({one = 1, two = 2}, {three = 3})
      should.Not.have.Property(results, {three = 3})
    end)
  end)

  describe('.Not.have.Error()', function()
    it('should handle non-errors', function()
      local results = function() end
      should.Not.have.Error(function() end)
      should.Not.have.Error(results)
    end)
  end)
end)
