module FormtasticBootstrap
  module Inputs
    class EmailInput < Formtastic::Inputs::EmailInput
      include Base
      include Base::Stringish
      include Base::Placeholder

      def to_html
        bootstrap_wrapping do
          builder.email_field(method, input_html_options)
        end
      end

    end
  end
end