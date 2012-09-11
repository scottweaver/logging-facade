# -*- encoding: utf-8 -*-
require File.expand_path('../lib/logging-facade/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Scott T Weaver"]
  gem.email         = ["scott.t.weaver@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""


  gem.add_development_dependency('rspec')
  gem.add_development_dependency('simplecov')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "logging-facade"
  gem.require_paths = ["lib"]
  gem.version       = LoggingFacade::VERSION
end
