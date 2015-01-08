#
# This class is only here to ensure existing code specifically pointing to device type chassism1000e doesn't break
# Module now refers to more generic name instead of specifically to chassism1000e.
#

require 'puppet/util/network_device/chassism1000e'
require 'puppet/util/network_device/cmc/facts'

class Puppet::Util::NetworkDevice::Chassism1000e::Facts < Puppet::Util::NetworkDevice::Cmc::Facts
end
