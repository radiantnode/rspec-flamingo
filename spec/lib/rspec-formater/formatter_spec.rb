# frozen_string_literal: true

require 'spec_helper'

describe RSpecFlamingo::Formatter do
  let(:output) { double 'output' }
  subject(:formatter) { described_class.new(output) }

  it 'implements methods' do
    expect(formatter).to respond_to(:example_passed)
    expect(formatter).to respond_to(:example_failed)
    expect(formatter).to respond_to(:example_pending)
    expect(formatter).to respond_to(:dump_failures)
    expect(formatter).to respond_to(:dump_summary)
  end
end
