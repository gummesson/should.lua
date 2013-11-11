# Should

[![Build Status](https://travis-ci.org/gummesson/should.lua.png?branch=master)](https://travis-ci.org/gummesson/should.lua)

**Should** is a small library that brings BDD-style assertions to Lua.

It's designed to be a companion to [Busted](https://github.com/Olivine-Labs/busted), but should work independently too.

## Why?

I love Busted but I'm not a fan of the word "assert".

## Installation

~~~
luarocks build https://raw.github.com/gummesson/should.lua/master/should-dev-1.rockspec
~~~

## Assertions

### should / expect

- `should.Equal` / `expect:toEqual`
- `should.Eql` / `expect:toEql`
- `should.be.Type` / `expect:toBeType`
- `should.be.True` / `expect:toBeTrue`
- `should.be.False` / `expect:toBeFalse`
- `should.be.Nil` / `expect:toBeNil`
- `should.be.Error` / `expect:toBeError`
- `should.be.Blank` / `expect:toBeBlank`
- `should.be.Empty` / `expect:toBeEmpty`
- `should.be.Above` / `expect:toBeAbove`
- `should.be.Gte` / `expect:toBeGte`
- `should.be.Below` / `expect:toBeBelow`
- `should.be.Lte` / `expect:toBeLte`
- `should.Match` / `expect:toMatch`
- `should.have.Property` / `expect:toHaveProperty`

### should.Not / expect:not

- `should.Not.Equal` / `expect:notToEqual`
- `should.Not.Eql` / `expect:notToEql`
- `should.Not.be.Type` / `expect:notToBeType`
- `should.Not.be.True` / `expect:notToBeTrue`
- `should.Not.be.False` / `expect:notToBeFalse`
- `should.Not.be.Nil` / `expect:notToBeNil`
- `should.Not.be.Error` / `expect:notToBeError`
- `should.Not.be.Blank` / `expect:notToBeBlank`
- `should.Not.be.Empty` / `expect:notToBeEmpty`
- `should.Not.be.Above` / `expect:notToBeAbove`
- `should.Not.be.Gte` / `expect:notToBeGte`
- `should.Not.be.Below` / `expect:notToBeBelow`
- `should.Not.be.Lte` / `expect:notToBeLte`
- `should.Not.Match` / `expect:notToMatch`
- `should.Not.have.Property` / `expect:notToHaveProperty`

Check out the [API documentation](https://github.com/gummesson/should.lua/blob/master/API.md) for more information.

## What's up with the capitalized letters?

Lua has some reserved words, like `not`, `nil` and `error`, which means it's not really appropriate to use them. I decided to capitalized all assertions for consistency.

## Dependencies

- [inspect](https://github.com/kikito/inspect.lua), which is licensed under [the MIT license](https://github.com/kikito/inspect.lua/blob/master/MIT-LICENSE.txt).
- [ansicolors](https://github.com/kikito/ansicolors.lua), which is licensed under [the MIT license](https://github.com/kikito/ansicolors.lua/blob/master/COPYING).

## License

The MIT License (MIT)

Copyright (c) 2013 Ellen Gummesson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
