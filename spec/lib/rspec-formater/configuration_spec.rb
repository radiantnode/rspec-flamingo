# frozen_string_literal: true

require 'spec_helper'

describe RSpecFlamingo::Configuration do
  let(:config) { RSpecFlamingo.configuration }

  after(:each) do
    RSpecFlamingo.reset!
  end

  it 'implements methods' do
    expect(config).to respond_to(:example_passed_emoji)
    expect(config).to respond_to(:example_failed_emoji)
    expect(config).to respond_to(:example_pending_emoji)
    expect(config).to respond_to(:hide_summary)
    expect(config).to respond_to(:hide_failures)
  end

  context 'when no example_passed_emoji is specified' do
    it 'defaults to 🦩' do
      expect(config.example_passed_emoji).to eq '🦩'
    end
  end

  context 'when a custom example_passed_emoji is specified' do
    it 'returns the custom emoji' do
      RSpecFlamingo.configure { |config| config.example_passed_emoji = '🎉' }
      expect(config.example_passed_emoji).to eq '🎉'
    end
  end
end
