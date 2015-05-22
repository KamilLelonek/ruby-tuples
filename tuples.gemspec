# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'tuples/version'

Gem::Specification.new do |spec|
  spec.name          = 'tuples'
  spec.version       = Tuples::VERSION
  spec.authors       = ['Kamil Lelonek']
  spec.email         = ['squixy.sln@gmail.com']
  spec.summary       = %q{Ruby implementation for tuples known from functional programming}
  spec.description   = %q{Tuple combines a fixed number of items together so that they can be passed around as a whole. Unlike an array or list, a tuple can hold objects with different types but they are also immutable.}
  spec.homepage      = 'https://github.com/KamilLelonek/ruby-tuples'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.9'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.1.0'
  spec.add_development_dependency 'minitest',   '~> 5.6.1'
end
