class DeviceStatusController < UIViewController
  def viewDidLoad
    rmq.stylesheet = DeviceStatusControllerStyleSheet
    self.navigationController.navigationBar.setBarTintColor(rmq.color.from_hex("34AADC"))
    rmq.append(DeviceStatusView, :root_view)
    leftButton = UIBarButtonItem.alloc.initWithTitle("Back", style: UIBarButtonItemStyleBordered, target: self, action: "home_navigation")
    barButtonTitle = {UITextAttributeTextColor => UIColor.whiteColor, NSFontAttributeName => UIFont.fontWithName("HelveticaNeue-Bold", size: 17)}
    UIBarButtonItem.appearance.setTitleTextAttributes(barButtonTitle, forState: UIControlStateNormal)
    self.navigationItem.leftBarButtonItem = leftButton
    BW::Location.get_once do |location|
      if location.is_a?(CLLocation)
        rmq(:latitude_value).get.text = location.latitude.to_s
        rmq(:longitude_value).get.text = location.longitude.to_s
      end
    end
    battery_charging_value
  end
  
  def battery_charging_value 
    rmq(:battery_value).get.text = "Battery charge level: "+ Battery.battery_percentage
  end
  
  def home_navigation
    self.navigationController.popToRootViewControllerAnimated(true)
  end
end

