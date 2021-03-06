# frozen_string_literal: true

module Noths
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end

    def to_s
      [
        super,
        response
      ].compact.join(': ')
    end

    def response
      return if response_headers.blank?

      return response_body unless response_headers['Content-Type'].include?('application/json')

      JSON.parse(response_body, symbolize_names: true)
    end
  end
end
