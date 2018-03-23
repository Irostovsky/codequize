# frozen_string_literal: true

require 'meta/baz'
require 'meta/foo/bar'

describe Meta::Foo::Bar do
  subject { described_class }

  describe "meta_call_full" do
    it 'success' do
      expect(subject.meta_call_full).to eq 'Baz'
    end
  end

  describe "meta_call" do
    it 'success' do
      expect(subject.meta_call).to eq 'Baz'
    end
  end

  describe "call" do
    it 'success' do
      expect(subject.call).to eq 'Baz'
    end
  end
end
