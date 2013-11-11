# Should

## API

The `message` in every assertion will be displayed if the assertion fails.

### should.Equal / expect:toEqual

~~~ lua
should.Equal(actual, expected[, message])
expect(actual):toEqual(expected[, message])
~~~

Determines if `actual` is equal to `expected`.

#### Example

~~~ lua
should.Equal(1, 1)
expect(1):toEqual(1)
~~~

### should.Eql / expect:toEql

~~~ lua
should.Eql(actual, expected[, message])
expect(actual):toEql(expected[, message])
~~~

Determines if the `actual` is equal to `expected` by doing a deep comparsion between them.

#### Example

~~~ lua
should.Eql({1, 2, 3}, {1, 2, 3})
expect({1, 2, 3}):toEql({1, 2, 3})
~~~

### should.be.Type / expect:toBeType

~~~ lua
should.be.Type(actual, expected[, message])
expect(actual):toBeType(expected[, message])
~~~

Determines if `actual` is a `type`.

#### Example

~~~ lua
should.be.Type(1, 'number')
expect(1):toBeType('number')
~~~

### should.be.True / expect:toBeTrue

~~~ lua
should.be.True(actual[, message])
expect(actual):toBeTrue([message])
~~~

Determines if `actual` is `true`.

#### Example

~~~ lua
should.be.True(true)
expect(true):toBeTrue()
~~~

### should.be.False / expect:toBeFalse

~~~ lua
should.be.False(actual[, message])
expect(actual):toBeFalse([message])
~~~

Determines if `actual` is `false`.

#### Example

~~~ lua
should.be.False(false)
expect(false):toBeFalse()
~~~

### should.be.Nil / expect:toBeNil

~~~ lua
should.be.Nil(actual[, message])
expect(actual):toBeNil([message])
~~~

Determines if `actual` is `nil`.

#### Example

~~~ lua
should.be.Nil(nil)
expect(false):toBeNil()
~~~

### should.be.Blank / expect:toBeBlank

~~~ lua
should.be.Blank(actual[, message])
expect(actual):toBeBlank([message])
~~~

Determines if `actual` is blank.

#### Example

~~~ lua
should.be.Blank('')
expect(''):toBeBlank()
~~~

### should.be.Empty / expect:toBeEmpty

~~~ lua
should.be.Empty(actual[, message])
expect(actual):toBeEmpty([message])
~~~

Determines if `actual` is empty.

#### Example

~~~ lua
should.be.Empty({})
expect({}):toBeEmpty()
~~~

### should.be.Above / expect:toBeAbove

~~~ lua
should.be.Above(actual, expected[, message])
expect(actual):toBeAbove(expected[, message])
~~~

Determines if `actual` is greater than `expected`.

#### Example

~~~ lua
should.be.Above(2, 1)
expect(2):toBeAbove(1)
~~~

### should.be.Gte / expect:toBeGte

~~~ lua
should.be.Gte(actual, expected[, message])
expect(actual):toBeGte(expected[, message])
~~~

Determines if `actual` is greater than or equal to `expected`.

#### Example

~~~ lua
should.be.Gte(1, 1)
expect(1):toBeGte(1)
~~~

### should.be.Below / expect:toBeBelow

~~~ lua
should.be.Below(actual, expected[, message])
expect(actual):toBeBelow(expected[, message])
~~~

Determines if `actual` is less than `expected`.

#### Example

~~~ lua
should.be.Below(1, 2)
expect(1):toBeBelow(2)
~~~

### should.be.Lte / expect:toBeLte

~~~ lua
should.be.Lte(actual, expected[, message])
expect(actual):toBeLte(expected[, message])
~~~

Determines if `actual` is less than or equal to `expected`.

#### Example

~~~ lua
should.be.Lte(1, 1)
expect(1):toBeLte(1)
~~~

### should.Match / expect:toMatch

~~~ lua
should.Match(actual, expected[, message])
expect(actual):toMatch(expected[, message])
~~~

Determines if `actual` match `expected`.

#### Example

~~~ lua
should.Match('Hello world', 'world')
expect('Hello world'):toMatch('world')
~~~

### should.have.Property / expect:toHaveProperty

~~~ lua
should.have.Property(actual, expected[, message])
expect(actual):toHaveProperty(expected[, message])
~~~

Determines if `actual` has the property `expected`.

#### Examples

~~~ lua
should.have.Property({one = 1, two = 2}, 'two')
expect({one = 1, two = 2}):toHaveProperty('two')
~~~

~~~ lua
should.have.Property({one = 1, two = 2}, {two = 2})
expect({one = 1, two = 2}):toHaveProperty({two = 2})
~~~

### should.have.Error / expect:toHaveError

~~~ lua
should.have.Error(actual[, message])
expect(actual):toHaveError([message])
~~~

Determines if `actual` returns an error.

#### Example

~~~ lua
should.have.Error(function() error('Abort!') end)
expect(function() error('Abort!') end):toHaveError()
~~~

### should.Not.Equal / expect:notToEqual

~~~ lua
should.Not.Equal(actual, expected[, message])
expect(actual):notToEqual(expected[, message])
~~~

Determines if `actual` is not equal to `expected`.

#### Example

~~~ lua
should.Not.Equal(1, 'Hello')
expect(1):notToEqual('Hello')
~~~

### should.Not.Eql / expect:notToEql

~~~ lua
should.Not.Eql(actual, expected[, message])
expect(actual):notToEqual(expected[, message])
~~~

Determines if the `actual` is not equal to the `expected` by doing a deep comparsion between them.

#### Example

~~~ lua
should.Not.Eql({1, 2, 3}, {4, 5, 6})
expect({1, 2, 3}):notToEql({4, 5, 6})
~~~

### should.Not.be.Type / expect:notToBeType

~~~ lua
should.Not.be.Type(actual, expected[, message])
expect(actual):notToBeType(expected[, message])
~~~

Determines if `actual` is not a `type`.

#### Example

~~~ lua
should.Not.be.Type(1, 'boolean')
expect(1):notToBeType('boolean')
~~~

### should.Not.be.True / expect:notToBeTrue

~~~ lua
should.Not.be.True(actual[, message])
expect(actual):notToBeTrue()
~~~

Determines if `actual` is not `true`.

#### Example

~~~ lua
should.Not.be.True(false)
expect(false):notToBeTrue()
~~~

### should.Not.be.False / expect:notToBeFalse

~~~ lua
should.Not.be.False(actual[, message])
expect(actual):notToBeFalse()
~~~

Determines if `actual` is not `false`.

#### Example

~~~ lua
should.Not.be.False(true)
expect(true):notToBeFalse()
~~~

### should.Not.be.Nil / expect:notToBeNil

~~~ lua
should.Not.be.Nil(actual[, message])
expect(actual):notToBeNil([message])
~~~

Determines if `actual` is not `nil`.

#### Example

~~~ lua
should.Not.be.Nil('Hello')
expect('Hello'):notToBeNil()
~~~

### should.Not.be.Blank / expect:notToBeBlank

~~~ lua
should.Not.be.Blank(actual[, message])
expect(actual):notToBeBlank()
~~~

Determines if `actual` is not blank.

#### Example

~~~ lua
should.Not.be.Blank('Hello')
expect('Hello'):notToBeBlank()
~~~

### should.Not.be.Empty / expect:notToBeEmpty

~~~ lua
should.Not.be.Empty(actual[, message])
expect(actual):notToBeEmpty()
~~~

Determines if `actual` is not empty.

#### Example

~~~ lua
should.Not.be.Empty({1})
expect({1}):notToBeEmpty()
~~~

### should.Not.be.Above / expect:notToBeAbove

~~~ lua
should.Not.be.Above(actual, expected[, message])
expect(actual).notToBeAbove(expected[, message])
~~~

Determines if `actual` is not greater than `expected`.

#### Example

~~~ lua
should.Not.be.Above(1, 2)
expect(1):notToBeAbove(2)
~~~

### should.Not.be.Gte / expect:notToBeGte

~~~ lua
should.Not.be.Gte(actual, expected[, message])
expect(actual).notToBeGte(expected[, message])
~~~

Determines if `actual` is not greater than or equal to `expected`.

#### Example

~~~ lua
should.Not.be.Gte(1, 2)
expect(1):notToBeGte(2)
~~~

### should.Not.be.Below / expect:notToBeBelow

~~~ lua
should.Not.be.Below(actual, expected[, message])
expect(actual).notToBeBelow(expected[, message])
~~~

Determines if `actual` is not less than `expected`.

#### Example

~~~ lua
should.Not.be.Below(2, 1)
expect(2):notToBeBelow(1)
~~~

### should.Not.be.Lte / expect:notToBeLte

~~~ lua
should.Not.be.Lte(actual, expected[, message])
expect(actual).notToBeLte(expected[, message])
~~~

Determines if `actual` is not less than or equal to `expected`.

#### Example

~~~ lua
should.Not.be.Lte(2, 1)
expect(2):notToBeLte(1)
~~~

### should.Not.Match / expect:notToMatch

~~~ lua
should.Not.Match(actual, expected[, message])
expect(actual):notToMatch(expected[, message])
~~~

Determines if `actual` doesn't match `expected`.

#### Example

~~~ lua
should.Not.Match('Hello world', 'everybody')
expect('Hello world'):notToMatch('everybody')
~~~

### should.Not.have.Property / expect:notToHaveProperty

~~~ lua
should.Not.have.Property(actual, expected[, message])
expect(actual):notToHaveProperty(expected[, message])
~~~

Determines if `actual` doesn't have the property `expected`.

#### Examples

~~~ lua
should.Not.have.Property({one = 1, two = 2}, 'three')
expect({one = 1, two = 2}):notToHaveProperty('three')
~~~

~~~ lua
should.Not.have.Property({one = 1, two = 2}, {three = 3})
expect({one = 1, two = 2}):notToHaveProperty({three = 3})
~~~

### should.Not.have.Error / expect:notToHaveError

~~~ lua
should.Not.have.Error(actual[, message])
expect(actual):notToHaveError()
~~~

Determines if `actual` doesn't return an error.

#### Example

~~~ lua
should.Not.have.Error(function() print('Continue!') end)
expect(function() print('Continue!') end):notToHaveError()
~~~
