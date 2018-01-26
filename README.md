# find-kitty-kidnapper

Ruby program that navigates a grid given a set of directions, as per http://which-technical-exercise.herokuapp.com/

### Getting started
1. Clone this repo
2. Run `bundle install` to install gems

### Tests
3. `rspec` runs the entire test suite.

## Usage
```ruby
irb(main):001:0> require_relative "lib/navigator.rb"
=> true
irb(main):002:0> navigator = Navigator.new
=> #<Navigator:0x007fec8713dcd0 @mover=#<Mover:0x007fec8713dca8 @coordinates=[0, 0]>, @turner=#<Turner:0x007fec8713dc58 @current_direction=0, @orientation=:north>>
irb(main):003:0> navigator.navigate
```
