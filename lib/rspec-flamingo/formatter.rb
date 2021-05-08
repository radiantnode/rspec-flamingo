# frozen_string_literal: true

module RSpecFlamingo
  class Formatter
    RSpec::Core::Formatters.register self, :example_passed, :example_failed, :example_pending, :dump_failures,
                                     :dump_summary

    FLAMINGO = '🦩'

    def initialize(output)
      @output = output
    end

    def output_flamingo(_)
      @output << FLAMINGO
    end

    %i[example_passed example_failed example_pending].each do |method|
      alias_method method, :output_flamingo
    end

    def dump_summary(_)
      @output << "\n"
    end

    def dump_failures(_)
      @output << "\n"
    end
  end
end
