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

Hashes and Arrays will have all values iterated.

```ruby
gem install utilise
```

```ruby
require 'utilise'
```

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

```
Time.unique
=> "80347765"
```

```
true.is_bool?
=> true

false.is_bool?
=> true

1.is_bool?
=> false

"true".is_bool?
=> false
```