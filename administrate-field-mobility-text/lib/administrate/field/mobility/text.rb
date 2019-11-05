require "administrate/field/base"
require "rails"

module Administrate
  module Field
    module Mobility
      class Text < Administrate::Field::Base
        class Engine < ::Rails::Engine
        end

        def self.permitted_attribute(attr, _options = nil)
          I18n.available_locales.map do |locale|
            "#{attr}_#{locale}".downcase.underscore
          end
        end

        def truncate
          data.to_s[0...truncation_length]
        end

        def to_partial_path
          "/fields/mobility/text/#{page}"
        end

        private

        def truncation_length
          options.fetch(:truncate, 50)
        end
      end
    end
  end
end
