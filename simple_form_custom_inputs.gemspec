# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_custom_inputs/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form_custom_inputs"
  spec.version       = SimpleFormCustomInputs::VERSION
  spec.authors       = ["Marcelo Barreto"]
  spec.email         = ["marcelobarretojunior@gmail.com"]

  spec.summary       = %q{Some custom inputs for simple_form}
  spec.homepage      = "https://github.com/marcelobarreto/simple_form_custom_inputs"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  #spec.add_runtime_dependency 'rails-assets-jquery'
end
