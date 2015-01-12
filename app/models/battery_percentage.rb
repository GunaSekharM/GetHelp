class Battery
  def self.battery_percentage
    myDevice = UIDevice.currentDevice
    myDevice.setBatteryMonitoringEnabled(true)
    myDevice.batteryLevel
  end
end