# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'representable/render/nil/version'

Gem::Specification.new do |spec|
  spec.name          = "representable-render-nil"
  spec.version       = Representable::Render::Nil::VERSION
  spec.authors       = ["Allen Wei"]
  spec.email         = ["digruby@gmail.com"]
  spec.description   = %q{Representable render nil by default}
  spec.summary       = %q{Representable render nil by default}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "representable"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
