# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orchestrate.io/version'

Gem::Specification.new do |spec|
  spec.name          = "orchestrate.io"
  spec.version       = OrchestrateIo::VERSION
  spec.authors       = ["azukiwasher"]
  spec.email         = ["azukiwasher@higanworks.com"]
  spec.description   = %q{A Ruby wrapper for the Orchestrate.io API}
  spec.summary       = %q{A Ruby wrapper for the Orchestrate.io API.}
  spec.homepage      = "https://github.com/giraffi/ruby-orchestrate.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "httparty", "< 0.12.0"
  spec.add_runtime_dependency     "json", "< 1.8.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-rcov'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'rb-readline'
end
