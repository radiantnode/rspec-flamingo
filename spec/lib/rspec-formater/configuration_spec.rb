# frozen_string_literal: true

require 'spec_helper'

describe RSpecFlamingo::Configuration do
  subject { Module.new.extend(RSpecFlamingo) }
  let(:config) { subject.configuration }

  it 'implements methods' do
    expect(config).to respond_to(:example_passed_emoji)
    expect(config).to respond_to(:example_failed_emoji)
    expect(config).to respond_to(:example_pending_emoji)
    expect(config).to respond_to(:hide_summary)
    expect(config).to respond_to(:hide_failures)
  end

  describe '.configure' do
    it 'uses the provided configuration' do
      subject.configure { |config| config.example_passed_emoji = '🎉' }
      expect(config.example_passed_emoji).to eq '🎉'
    end
  end
end
