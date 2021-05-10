# frozen_string_literal: true

require 'rspec-flamingo'

RSpecFlamingo.configure do |config|
  config.example_failed_emoji = '🐊'
  config.example_pending_emoji = '👷'
  config.hide_summary = false
  config.hide_failures = false
end

RSpec.configure do |config|
  config.formatter = RSpecFlamingo::Formatter
end
