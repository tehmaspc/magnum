# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'puppet-magnum/version'

Gem::Specification.new do |spec|
  spec.name          = 'puppet-magnum'
  spec.version       = PuppetMagnum::VERSION
  spec.authors       = ['Tehmasp Chaudhri']
  spec.email         = ['tehmasp@gmail.com']
  spec.description   = %q{puppet-magnum - a tool for rapid, consistent, and best practice Puppet module development.}
  spec.summary       = %q{puppet-magnum - a tool for rapid, consistent, and best practice Puppet module development.}
  spec.homepage      = 'https://github.com/tehmaspc/puppet-magnum'
  spec.license       = 'Apache License, Version 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3.0'

  spec.add_development_dependency 'sem_ver', '>= 0.1.1'
  spec.add_development_dependency 'rake', '>= 10.5.0'

  spec.add_runtime_dependency 'bundler', '>= 1.11.2'
  spec.add_runtime_dependency 'redcarpet', '>= 3.3.4'
  spec.add_runtime_dependency 'thor', '>= 0.19.1'
  spec.add_runtime_dependency 'colorize', '>= 0.7.7'
  spec.add_runtime_dependency 'version', '>= 1.0.0'

  spec.add_runtime_dependency 'puppet', '~> 4.4.1'
  spec.add_runtime_dependency 'rspec', '~> 3.1.0'
  spec.add_runtime_dependency 'puppet-lint', '~> 1.1.0'
  spec.add_runtime_dependency 'rspec-puppet', '~> 2.4.0'
  spec.add_runtime_dependency 'puppetlabs_spec_helper', '~> 1.1.1'

end
