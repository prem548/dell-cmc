require 'net/ssh'
require 'uri'

module Puppet::Util::NetworkDevice::Chassism1000e
  class Transport
    attr_reader :hostname, :port, :username, :password

    def initialize hostname, port, username, password
      @hostname = hostname
      @port     = port
      @username = username
      @password = password
    end

    def connect
      @client = Net::SSH.start(@hostname, @username, {:port => @port.to_i, :password => @password})
      @client
    end
  end
end
