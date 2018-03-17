# frozen_string_literal: true

require 'eratosfen'

describe Eratosfen do
  subject { described_class.new(max_number) }

  describe '#init' do
    let(:max_number) { 2 }

    it {
      expect(subject.max_number).to eq max_number
    }
  end

  describe '#call' do
    context 'not allowed values les then 2' do
      let(:max_number) { 1 }
      it "return min res" do
        expect(subject.call).to be_empty
      end
    end

    context 'min value' do
      let(:max_number) { 2 }
      it "return min res" do
        expect(subject.call).to eq [2]
      end
    end

    context '17' do
      let(:max_number) { 17 }
      it "return simple" do
        expect(subject.call).to eq [2, 3, 5, 7, 11, 13, 17]
      end
    end
  end
end
