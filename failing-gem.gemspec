# -*- encoding: utf-8 -*-

$:.push File.expand_path('../lib', __FILE__)
require 'failing'

Gem::Specification.new do |gem|
  gem.name          = "failing"
  gem.version       = Failing::VERSION
  gem.summary       = %q{Fails to build}
  gem.description   = %q{Throws namespace errors to drive developers insane}
  gem.license       = "Proprietary"
  gem.authors       = ["RageLtMan"]
  gem.email         = "rageltman [at] sempervictus"
  gem.homepage      = "https://the7thcircle.tar"

  gem.files = Dir.glob('lib/**/*.rb') +
  Dir.glob('ext/**/*.{c,h,rb}')

  if RUBY_PLATFORM =~ /java/
    gem.platform = 'java'
  end 
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'hamster', '~> 1.0.1.pre.rc2'
  gem.add_runtime_dependency 'concurrent-ruby', '~> 0.7.0.rc3'
end
