# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'say_it_with_graphs/version'

Gem::Specification.new do |spec|
  spec.name          = "say_it_with_graphs"
  spec.version       = SayItWithGraphs::VERSION
  spec.version       = "#{spec.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.authors       = ["Ole Michaelis"]
  spec.email         = ["Ole.Michaelis@googlemail.com"]
  spec.summary       = %q{Make more of your graphs. Write with them!}
  spec.description   = %q{say-it-with-graphs let you actually write into a place where usually the computer tells you something.}
  spec.homepage      = "https://github.com/nesQuick/say-it-with-graphs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "guard", "~> 2.12"
  spec.add_development_dependency "guard-rspec", "~> 4.5"
end
