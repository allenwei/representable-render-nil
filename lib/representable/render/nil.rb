require "representable/render/nil/version"
require "representable/definition"

module Representable
  module Render
    module Nil
      def self.included(base)
        base.class_eval do
          def initialize(sym, options={})
            @name     = sym.to_s
            @options  = options
            @options[:default] ||= [] if array?
            @options[:render_nil] = true if @options[:render_nil].nil?
          end
        end
      end
    end
  end
end

Representable::Definition.send(:include, Representable::Render::Nil)
