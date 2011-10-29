# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'celebration/version'

Gem::Specification.new do |s|
  s.name        = 'celebration'
  s.version     = Celebration::VERSION
  s.authors     = ['Larry Baltz']
  s.email       = ['larry@baltz.org']
  s.homepage    = ''
  s.summary     = %q{Larry E. Baltz's (LEB's) personal collection of Ruby code}
  # s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = 'celebration'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rr'
  s.add_runtime_dependency 'facets'
  s.add_runtime_dependency 'backports'
end
