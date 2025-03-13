require 'ipay/utilities/hash'
require 'ipay/utilities/array'
require 'ipay/utilities/string'
require 'ipay/setup'
require 'ipay/request'

module Ipay
  class Client
    def initialize(username=nil, apikey=nil, debug=false)
      @setup = Ipay::Setup.new(username, apikey, debug)
    end

    def get(url, params = {}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      request.get(url, params, options)
    end

    def post(url, params = {}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      request.post(url, params, options)
    end

    def put(url, params={}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      request.put(url, params, options)
    end

    def delete(url, params={}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      request.delete(url, params, options)
    end

    def register_order(params = {}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      params[:userName] = @setup.username
      params[:password] = @setup.password
      request.post_register_order('register.do', params, options)
    end

    def get_order_status(params = {}, options = { format: :formated })
      request = Ipay::Request.new(@setup.host, @setup.path)
      params[:userName] = @setup.username
      params[:password] = @setup.password
      request.get('getOrderStatusExtended.do', params, options)
    end
  end
end
