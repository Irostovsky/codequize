# frozen_string_literal: true

module Meta
  module Foo
    class Bar

      class << self
        def meta_call_full
          Meta::Baz.new.name
        end

        def meta_call
          Baz.new.name
        end
      end

      def self.call
        Baz.new.name
      end
    end
  end
end
