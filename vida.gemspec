# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vida/version'

Gem::Specification.new do |spec|
  spec.name          = "vida"
  spec.version       = Vida::VERSION
  spec.authors       = ["Mario Viapiano"]
  spec.email         = ["marioeviapiano@gmail.com"]
  spec.summary       = "Game of Life"
  spec.description   = "Game of Life - emeve89 edition"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.1.0"
end
