# frozen_string_literal: true

require 'spec_helper'

describe RSpecFlamingo::Configuration do
  let(:config) { RSpecFlamingo.configuration }

  it 'implements methods' do
    expect(config).to respond_to(:example_passed_emoji)
    expect(config).to respond_to(:example_failed_emoji)
    expect(config).to respond_to(:example_pending_emoji)
    expect(config).to respond_to(:hide_summary)
    expect(config).to respond_to(:hide_failures)
  end
end
