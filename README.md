Utilise
=======

[![Code Climate](https://codeclimate.com/github/benSlaughter/utilise.png)](https://codeclimate.com/github/benSlaughter/utilise)
[![Build Status](https://travis-ci.org/benSlaughter/utilise.png?branch=master)](https://travis-ci.org/benSlaughter/utilise)
[![Dependency Status](https://gemnasium.com/benSlaughter/utilise.png)](https://gemnasium.com/benSlaughter/utilise)
[![Coverage Status](https://coveralls.io/repos/benSlaughter/utilise/badge.png)](https://coveralls.io/r/benSlaughter/utilise)
[![Gem Version](https://badge.fury.io/rb/utilise.png)](http://badge.fury.io/rb/utilise)

Extends classes to include the to_bool method

Currently extends:
 * Fixnum
 * String
 * Symbol
 * Hash
 * Array
 * Object

New Classes
 * Hashie::Bash

Hashes and Arrays will have all values iterated.

## Usage

```ruby
gem install utilise
```

```ruby
require 'utilise'
```

### to_bool

```ruby
1.to_bool
=> true

'yes'.to_bool
=> true

:t.to_bool
=> true

{'key' => 1}.to_bool
=> {'key' => true}

[1].to_bool
=> [true]
```

```ruby
0.to_bool
=> false

'no'.to_bool
=> false

:f.to_bool
=> false

{'key' => 0}.to_bool
=> {'key' => false}

[0].to_bool
=> [false]
```

### Time#unique

```ruby
Time.unique
=> '80347765'
```

### bool?

```ruby
true.bool?
=> true

false.bool?
=> true

1.bool?
=> false

'true'.bool?
=> false
```

### string cases

```ruby
'snake_case'.camel
=> 'SnakeCase'

'kebab-case'.camel(:lower)
=> 'kebabCase'

'space case'.snake
=> 'space_case'

'CamelCase'.space
=> 'camel case'

'camelCase'.kebab
=> 'camel-case'
```
