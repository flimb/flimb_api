$:.push File.expand_path('../lib', __FILE__)
require 'flimb_api/version'

Gem::Specification.new do |s|
  s.name        = 'flimb_api'
  s.version     = FlimbApi::VERSION::STRING
  s.authors     = 'Flimb'
  s.email       = 'contact@flimb.com'
  s.homepage    = 'https://github.com/flimb/flimb_api'
  s.summary     = 'Gem for accessing the Flimb REST web services'
  s.description = 'Gem for accessing the Flimb REST web services'

  s.rubyforge_project = 'flimb_api'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  s.add_dependency('activesupport', ['>= 3.0.0'])
  s.add_dependency('activeresource', ['>= 3.0.0'])
  s.add_development_dependency 'rspec'
end
