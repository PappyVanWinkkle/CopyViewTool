# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copy_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "copy_view_tool"
  spec.version       = CopyViewTool::VERSION
  spec.authors       = ["Paul Chabz"]
  spec.email         = ["paulchabz@yahoo.co.uk"]

  spec.summary       = %q{Copyright gem that can be used on any website.}
  spec.description   = %q{Provides HTML Data for Rails Application.}
  spec.homepage      = "https://copyright.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
