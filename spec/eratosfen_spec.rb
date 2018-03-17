# frozen_string_literal: true

require 'eratosfen'

describe Eratosfen do
  subject { described_class.new(max_number) }
  describe '#call' do
    let(:max_number) { 2 }

    it 'init' do
      expect(subject.max_number).to eq max_number
    end

  end
end
