# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_score/version'

Gem::Specification.new do |spec|
  spec.name          = "top_score"
  spec.version       = TopScore::VERSION
  spec.authors       = ["Todd Metheny"]
  spec.email         = ["todd.metheny@gmail.com"]
  spec.summary       = %q{simple gamification}
  spec.description   = %q{this gem adds simple gamification to an application with a User model}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
