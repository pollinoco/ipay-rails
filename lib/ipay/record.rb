module Ipay
  class Record
    attr_reader :client

    def initialize(client)
      @client = client
    end
  end
end