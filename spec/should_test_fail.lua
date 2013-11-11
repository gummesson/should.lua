-- Modules

local should = require('should')

-- Tests
--
-- These tests are meant for testing the assertion's failure output.
-- They will fail. Horribly.

describe('should', function()
  describe('.Equal()', function()
    it('should not handle "true == false"', function()
      should.Equal(true, false)
    end)
  end)

  describe('.Eql()', function()
    it('should not handle "{1, 2, 3} == {4, 5, 6}"', function()
      should.Eql({1, 2, 3}, {4, 5, 6})
    end)
  end)

  describe('.be.Type()', function()
    it('should not handle "1 == \'string\'"', function()
      should.be.Type(1, 'string')
    end)
  end)

  describe('.be.True()', function()
    it('should not handle "false"', function()
      should.be.True(false)
    end)
  end)

  describe('.be.False()', function()
    it('should not handle "true"', function()
      should.be.False(true)
    end)
  end)

  describe('.be.Nil()', function()
    it('should not handle "true"', function()
      should.be.Nil(true)
    end)
  end)

  describe('.have.Error()', function()
    it('should not handle non errors', function()
      should.have.Error(function() end)
    end)
  end)

  describe('.be.Blank()', function()
    it('should not handle "Hello"', function()
      should.be.Blank('Hello')
    end)
  end)

  describe('.be.Empty()', function()
    it('should not handle "{1}"', function()
      should.be.Empty({1})
    end)
  end)

  describe('.be.Above()', function()
    it('should not handle "1 > 2"', function()
      should.be.Above(1, 2)
    end)
  end)

  describe('.be.Gte()', function()
    it('should not handle "1 >= 2"', function()
      should.be.Gte(1, 2)
    end)
  end)

  describe('.be.Below()', function()
    it('should not handle "2 < 1"', function()
      should.be.Below(2, 1)
    end)
  end)

  describe('.be.Lte()', function()
    it('should not handle "2 <= 1"', function()
      should.be.Lte(2, 1)
    end)
  end)

  describe('.Match()', function()
    it('should not handle "Hello world == /test/"', function()
      should.Match('Hello world', 'test')
    end)
  end)

  describe('.have.Property()', function()
    it('should not handle "{one = 1, two = 2} == \'three\'"', function()
      local results = {one = 1, two = 2}
      should.have.Property({one = 1, two = 2}, 'three')
      should.have.Property(results, 'three')
    end)

    it('should not handle "{one = 1, two = 2} == {three = 3}"', function()
      local results = {one = 1, two = 2}
      should.have.Property({one = 1, two = 2}, {three = 3})
      should.have.Property(results, {three = 3})
    end)
  end)

  describe('.Not.Equal()', function()
    it('should not handle "true == true"', function()
      should.Not.Equal(true, true)
    end)
  end)

  describe('.Not.Eql()', function()
    it('should not handle "{1, 2, 3} == {1, 2, 3}"', function()
      should.Not.Eql({1, 2, 3}, {1, 2, 3})
    end)
  end)

  describe('.Not.be.Type()', function()
    it('should not handle "1 == number"', function()
      should.Not.be.Type(1, 'number')
    end)
  end)

  describe('.Not.be.True()', function()
    it('should not handle "true"', function()
      should.Not.be.True(true)
    end)
  end)

  describe('.Not.be.False()', function()
    it('should not handle "false"', function()
      should.Not.be.False(false)
    end)
  end)

  describe('.Not.be.Nil()', function()
    it('should not handle "nil"', function()
      should.Not.be.Nil(nil)
    end)
  end)

  describe('.Not.have.Error()', function()
    it('should not handle errors', function()
      should.Not.have.Error(function() error('Test') end)
    end)
  end)

  describe('.Not.be.Blank()', function()
    it('should not handle "\'\'"', function()
      should.Not.be.Blank('')
    end)
  end)

  describe('.Not.be.Empty()', function()
    it('should not handle "{}"', function()
      should.Not.be.Empty({})
    end)
  end)

  describe('.Not.be.Above()', function()
    it('should not handle "2 < 1"', function()
      should.Not.be.Above(2, 1)
    end)
  end)

  describe('.Not.be.Gte()', function()
    it('should not handle "2 <= 1"', function()
      should.Not.be.Gte(2, 1)
    end)
  end)

  describe('.Not.be.Below()', function()
    it('should not handle "1 > 2"', function()
      should.Not.be.Below(1, 2)
    end)
  end)

  describe('.Not.be.Lte()', function()
    it('should not handle "1 >= 2"', function()
      should.Not.be.Lte(1, 2)
    end)
  end)

  describe('.Not.Match()', function()
    it('should not handle "Hello world ~= /world/"', function()
      should.Not.Match('Hello world', 'world')
    end)
  end)

  describe('.Not.have.Property()', function()
    it('should not handle "{one = 1, two = 2} == \'one\'"', function()
      local results = {one = 1, two = 2}
      should.Not.have.Property({one = 1, two = 2}, 'one')
      should.Not.have.Property(results, 'one')
    end)

    it('should not handle "{one = 1, two = 2} == {one = 1}"', function()
      local results = {one = 1, two = 2}
      should.Not.have.Property({one = 1, two = 2}, {one = 1})
      should.Not.have.Property(results, {one = 1})
    end)
  end)
end)
