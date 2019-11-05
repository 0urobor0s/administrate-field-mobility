$:.push File.expand_path("../lib", __FILE__)

require_relative "../lib/administrate/field/mobility/version.rb"

Gem::Specification.new do |gem|
  gem.name = "administrate-field-mobility-text"
  gem.version = Administrate::Field::Mobility.version
  gem.authors = ["Daniel Tinoco"]
  gem.email = ["0urobor0s@users.noreply.github.com"]
  gem.homepage = "https://github.com/0urobor0s/administrate-field-mobility"
  gem.summary = "Mobility text field plugin for Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate", "~> 0.10", ">= 0.10.0"

  gem.add_development_dependency "rspec", "~> 3.4"
end
