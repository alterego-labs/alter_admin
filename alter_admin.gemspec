# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alter_admin/version'

Gem::Specification.new do |spec|
  spec.name          = "alter_admin"
  spec.version       = AlterAdmin::VERSION
  spec.authors       = ["sergio1990"]
  spec.email         = ["sergeg1990@gmail.com"]
  spec.description   = %q{Simple admin panel generator with inherited resources, has_scope, datatables for Rails 4}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "inherited_resources"
  spec.add_runtime_dependency "has_scope"
  spec.add_runtime_dependency "simple_form"
  spec.add_runtime_dependency "jquery-datatables-rails"
  spec.add_runtime_dependency "jquery-rails"
  spec.add_runtime_dependency "twitter-bootstrap-rails"
  spec.add_runtime_dependency "sprockets-rails"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "cancan"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sass-rails"
end
