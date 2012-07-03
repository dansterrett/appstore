$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "appstore/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "appstore"
  s.version     = Appstore::VERSION
  s.authors     = ["Nicholas W. Watson"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "http://github.com/entropillc/appstore"
  s.summary     = "Ruby on Rails Mobile Application Distribution Platform"
  s.description = "Ruby on Rails Mobile Application Distribution Platform built as an engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency "bootstrapped", "~> 2.0.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
