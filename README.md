# Tuples

[ ![Codeship Status for KamilLelonek/ruby-tuples](https://codeship.com/projects/c82b3680-e2e1-0132-cc6e-76e3d81118b5/status?branch=master)](https://codeship.com/projects/81591)

Ruby implementation for tuples known from functional programming.

Tuple combines a fixed number of items together so that they can be passed around as a whole. Unlike an array or list, a tuple can hold objects with different types but they are also immutable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tuples'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tuples

## Usage

You are provided with two classes:

  - `Tuple` in general
  - `Pair` in particular

The main difference between two of them are that `Tuple` always consist of 2 elements - when initialized with less - the missing ones are filled with `nil`, when initialized with more - an `ArgumentError` is raised.

You can initialize them in different ways:

    Tuple.new(1, 2)
    Tuple.new([1, 2])
    Tuple(1, 2)
    Tuple([1, 2])
    Tuple[1, 2]
    
depending on which syntax you feel more convenient with.

Both of the classes have some auxiliary methods:

  - `length` / `arity` - which returns number of values inside tuple
  - `first` / `last` / `second` (only pair) - which returns a corresponding elements
  - `[]` that gives you an access to a particular elements

Tuples are also comparable which means you can compare them, match them in `case` statement or even sort and find them in an array.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Tests

To run all tests from `spec` directory execute:

    bundle exec rspec

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tuples/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
