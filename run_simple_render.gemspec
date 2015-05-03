# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'run_simple_render/version'

Gem::Specification.new do |spec|
  spec.name          = "run_simple_render"
  spec.version       = RunSimpleRender::VERSION
  spec.authors       = ["Jorge Iriso"]
  spec.email         = ["jiriso@gmail.com"]
  spec.summary       = %q{RunSimple Render}
  spec.description   = %q{Because Simple is better}
  spec.homepage      = "http://www.runsimple.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "activemodel",  "~> 3.0"
  spec.add_runtime_dependency "activesupport", "~> 3.0"
end
