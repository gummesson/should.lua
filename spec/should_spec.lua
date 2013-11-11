-- Modules

local should = require('should')

-- Tests

describe('should', function()
  describe('.Equal()', function()
    it('should handle "true == true"', function()
      local results = true
      should.Equal(true, true)
      should.Equal(results, true)
    end)

    it('should handle "false == false"', function()
      local results = false
      should.Equal(false, false)
      should.Equal(results, false)
    end)

    it('should handle "nil == nil"', function()
      local results = nil
      should.Equal(nil, nil)
      should.Equal(results, nil)
    end)

    it('should handle "\'Hello\' == \'Hello\'"', function()
      local results = 'Hello'
      should.Equal('Hello', 'Hello')
      should.Equal(results, 'Hello')
    end)

    it('should handle "1 == 1"', function()
      should.Equal(1, 1)
    end)
  end)

  describe('.Eql()', function()
    it('should handle "{1, 2, 3} == {1, 2, 3}"', function()
      local results = {1, 2, 3}
      should.Eql({1, 2, 3}, {1, 2, 3})
      should.Eql(results, {1, 2, 3})
    end)

    it('should handle "{a = 1, b = 2, c = 3} == {a = 1, b = 2, c = 3}"', function()
      local results = {a = 1, b = 2, c = 3}
      should.Eql({a = 1, b = 2, c = 3}, {a = 1, b = 2, c = 3})
      should.Eql(results, {a = 1, b = 2, c = 3})
    end)
  end)

  describe('.be.Type()', function()
    it('should handle "string"', function()
      local results = 'Hello'
      should.be.Type('Hello', 'string')
      should.be.Type(results, 'string')
    end)

    it('should handle "number"', function()
      local results = 1
      should.be.Type(1, 'number')
      should.be.Type(results, 'number')
    end)

    it('should handle "table"', function()
      local results = {}
      should.be.Type({}, 'table')
      should.be.Type(results, 'table')
    end)

    it('should handle "boolean"', function()
      local results = true
      should.be.Type(true, 'boolean')
      should.be.Type(results, 'boolean')
    end)

    it('should handle "nil"', function()
      local results = nil
      should.be.Type(nil, 'nil')
      should.be.Type(results, 'nil')
    end)

    it('should handle "function"', function()
      local results = function() end
      should.be.Type(function() end, 'function')
      should.be.Type(results, 'function')
    end)
  end)

  describe('.be.True()', function()
    it('should handle "true"', function()
      local results = true
      should.be.True(true)
      should.be.True(results)
    end)
  end)

  describe('.be.False()', function()
    it('should handle "false"', function()
      local results = false
      should.be.False(false)
      should.be.False(results)
    end)
  end)

  describe('.be.Nil()', function()
    it('should handle "nil"', function()
      local results = nil
      should.be.Nil(nil)
      should.be.Nil(results)
    end)
  end)

  describe('.be.Blank()', function()
    it('should handle empty strings', function()
      local results = ''
      should.be.Blank('')
      should.be.Blank(results)
    end)

    it('should handle "nil"', function()
      local results = nil
      should.be.Blank(nil)
      should.be.Blank(results)
    end)
  end)

  describe('.be.Empty()', function()
    it('should handle empty table', function()
      local results = {}
      should.be.Empty({})
      should.be.Empty(results)
    end)
  end)

  describe('.be.Above()', function()
    it('should handle "2 > 1"', function()
      local results = 2
      should.be.Above(2, 1)
      should.be.Above(results, 1)
    end)
  end)

  describe('.be.Gte()', function()
    it('should handle "2 >= 1"', function()
      local results = 2
      should.be.Gte(2, 1)
      should.be.Gte(results, 1)
    end)

    it('should handle "2 >= 2"', function()
      local results = 2
      should.be.Gte(2, 2)
      should.be.Gte(results, 2)
    end)
  end)

  describe('.be.Below()', function()
    it('should handle "1 < 2"', function()
      local results = 1
      should.be.Below(1, 2)
      should.be.Below(results, 2)
    end)
  end)

  describe('.be.Lte()', function()
    it('should handle "1 <= 2"', function()
      local results = 1
      should.be.Lte(1, 2)
      should.be.Lte(results, 2)
    end)

    it('should handle "1 <= 1"', function()
      local results = 1
      should.be.Lte(1, 1)
      should.be.Lte(results, 1)
    end)
  end)

  describe('.Match()', function()
    it('should handle "\'Hello world\' == /world/"', function()
      local results = 'Hello world'
      should.Match('Hello world', 'world')
      should.Match(results, 'world')
    end)
  end)

  describe('.have.Property()', function()
    it('should handle "{one = 1, two = 2} == \'two\'"', function()
      local results = {one = 1, two = 2}
      should.have.Property({one = 1, two = 2}, 'two')
      should.have.Property(results, 'two')
    end)

    it('should handle "{one = 1, two = 2} == {two = 2}"', function()
      local results = {one = 1, two = 2}
      should.have.Property({one = 1, two = 2}, {two = 2})
      should.have.Property(results, {two = 2})
    end)
  end)

  describe('.have.Error()', function()
    it('should handle errors', function()
      local results = function() error('Test') end
      should.have.Error(function() error('Test') end)
      should.have.Error(results)
    end)
  end)
end)
