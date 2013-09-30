to_bool
=======

[![Code Climate](https://codeclimate.com/github/benSlaughter/to_bool.png)](https://codeclimate.com/github/benSlaughter/to_bool)
[![Build Status](https://travis-ci.org/benSlaughter/to_bool.png?branch=master)](https://travis-ci.org/benSlaughter/to_bool)
[![Dependency Status](https://gemnasium.com/benSlaughter/to_bool.png)](https://gemnasium.com/benSlaughter/to_bool)
[![Coverage Status](https://coveralls.io/repos/benSlaughter/to_bool/badge.png)](https://coveralls.io/r/benSlaughter/to_bool)
[![Gem Version](https://badge.fury.io/rb/to_b.png)](http://badge.fury.io/rb/to_b)

Extends classes to include the to_b method
Currently Extends:
 * Fixnum
 * String
 * Symbol

```ruby
gem install to_b
```

```ruby
require 'to_bool'
```

```ruby
1.to_b
=> true

'yes'.to_b
=> true

:t.to_b
=> true
```

```ruby
0.to_b
=> false

'no'.to_b
=> false

:f.to_b
=> false
```
