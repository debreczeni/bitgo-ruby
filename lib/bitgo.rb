require 'bitgo/v1/api'
require 'bitgo/v2/api'
require 'uri'
require 'net/http'
require 'json'

module Bitgo
  class ApiError < RuntimeError
    attr_accessor :message, :response, :http_code, :http_message

    def initialize(message = nil, response_object = nil)
      @message = message
      @response = response_object
      @http_code = response_object.try :code
      @http_message = response_object.try :message
    end

    def to_s
      message
    end
  end
end
