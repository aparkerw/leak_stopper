$:.push File.expand_path("../lib", __FILE__)
require 'leak_stopper/version'

Gem::Specification.new do |gem|
  gem.name        = 'leak_stopper'
  gem.version     = LeakStopper::VERSION
  gem.licenses    = ['MIT']
  gem.summary     = "Gem to identify the leaking of sensitive data on a site."
  gem.description = "Gem to identify the leaking of sensitive data on a site."
  gem.authors     = ["Adam Parker"]
  gem.email       = 'adam.parker@careerbuilder.com'
  gem.files       = ["lib/leak_stopper.rb"]
  gem.homepage    = 'https://rubygems.org/gems/leak_stopper'

  gem.add_development_dependency "rspec", ">= 2.14.1"
  gem.add_development_dependency "rake", ">= 10.3.1"
  gem.add_development_dependency "simplecov", ">= 0.8.2"
  #gem.add_development_dependency "factory_girl", ">= 4.0"
end
