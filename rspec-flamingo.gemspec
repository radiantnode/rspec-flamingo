# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'rspec-flamingo/version'

Gem::Specification.new do |s|
  s.name        = 'rspec-flamingo'
  s.version     = RSpecFlamingo::VERSION
  s.summary     = <<-SUMMARY
    A custom RSpec formatter that just outputs 🦩 for everything.
    This is made from an inside joke and should not be used in any sane workplace.
  SUMMARY
  s.authors     = ['Michael Simmons']
  s.email       = 'michael@radiantnode.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/radiantnode/rspec-flamingo'
  s.license     = 'MIT'

  s.add_dependency 'rspec-core', '~> 3.10'
end
