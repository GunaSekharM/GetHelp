class Battery
  def self.battery_percentage
    myDevice = UIDevice.currentDevice
    myDevice.setBatteryMonitoringEnabled(true)
    (myDevice.batteryLevel*100).round.abs.to_s + "%"
  end
end