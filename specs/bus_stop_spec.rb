require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Leith Road")
  end

end
