require 'ipay/formatters/underscore_formatter'
module Ipay
  class Response
    attr_reader :body, :formatter

    def initialize(body, formatter_class_name='UnderscoreFormatter')
      @body = JSON.parse(body)
      @formatter = Object.const_get("Ipay::Formatters::#{ formatter_class_name }").new
    end

    def call(options={})
      if options[:none]
        JSON.parse(body)
      else
        formatter.call(content: body)
      end
    end
  end
end