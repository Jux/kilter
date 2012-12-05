# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kilter/version'

Gem::Specification.new do |gem|
  gem.name          = "kilter"
  gem.version       = Kilter::VERSION
  gem.authors       = ["Aidan Feldman"]
  gem.email         = ["aidan.feldman@gmail.com"]
  # gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{Compass extension for providing cross-browser CSS filters in SASS.}
  gem.homepage      = 'https://github.com/afeld/kilter'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'compass', '~> 0.12.0'

  gem.add_development_dependency 'haml-server'
end
