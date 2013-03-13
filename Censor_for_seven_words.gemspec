# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Censor_for_seven_words/version'

Gem::Specification.new do |gem|
  gem.name          = "Censor_for_seven_words"
  gem.version       = CensorForSevenWords::VERSION
  gem.authors       = ["Eric Jones"]
  gem.email         = ["joneserice@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""
  gem.add_development_dependency "rspec", "~> 2.6"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
