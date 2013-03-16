$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "censor_for_seven_words/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "censor_for_seven_words"
  s.version     = CensorForSevenWords::VERSION
  s.authors     = ["Eric Jones"]
  s.email       = ["joneserice@gmail.com"]
  s.homepage    = ""
  s.summary     = "This gem will censor words in a string"
  s.description = "The seven words that can't be said on television are changed to be more 'PG'"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
end
