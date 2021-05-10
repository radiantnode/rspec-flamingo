# frozen_string_literal: true

module RSpecFlamingo
  class Formatter < RSpec::Core::Formatters::ProgressFormatter
    RSpec::Core::Formatters.register self, :example_passed, :example_failed, :example_pending, :dump_summary,
                                     :dump_failures

    def initialize(output)
      @output = output
    end

    def output_emoji(emoji)
      @output << emoji
    end

    %i[example_passed example_failed example_pending].each do |method|
      define_method method do |_|
        output_emoji RSpecFlamingo.configuration.send(:"#{method}_emoji")
      end
    end

    def dump_summary(_)
      return super unless RSpecFlamingo.configuration.hide_summary

      @output << "\n"
    end

    def dump_failures(_)
      return super unless RSpecFlamingo.configuration.hide_failures

      @output << "\n"
    end
  end
end
