# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opentimestamps/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'opentimestamps-ruby'
  spec.version       = Opentimestamps::Ruby::VERSION
  spec.authors       = ['azuchi']
  spec.email         = ['azuchi@haw.co.jp']

  spec.summary       = %q{The implementation of the Open Timestamps for Ruby.}
  spec.description   = %q{The implementation of the Open Timestamps for Ruby.}
  spec.homepage      = 'https://github.com/azuchi/opentimestamps-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bitcoin-ruby', '~> 0.0.10'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
