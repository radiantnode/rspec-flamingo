# frozen_string_literal: true

module RSpecFlamingo
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  class Configuration
    FLAMINGO = '🦩'

    attr_accessor :example_passed_emoji, :example_failed_emoji, :example_pending_emoji, :hide_summary, :hide_failures

    def initialize
      @example_passed_emoji = FLAMINGO
      @example_failed_emoji = FLAMINGO
      @example_pending_emoji = FLAMINGO
      @hide_summary = true
      @hide_failures = true
    end
  end
end
