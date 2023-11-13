require 'faraday'
require 'json'
require 'base64'

module Ipay
  class Setup
    attr_accessor :host, :path, :password, :username, :debug

    def initialize(username=nil, password=nil, debug=false)
    	@host = 'https://eco.credibanco.com/'
    	if debug
    		@host = 'https://ecouat.credibanco.com/'
    	end
      
      @path = 'payment/rest/'

      @debug = debug

      raise Error, 'You must provide a iPay Password' if not password
      raise Error, 'You must provide a iPay USERNAME' if not username
      @password = password
      @username = username
    end

  end
end