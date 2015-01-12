class MainController < UIViewController 

  def viewDidLoad
    super
    self.edgesForExtendedLayout = UIRectEdgeNone
    rmq.stylesheet = MainControllerStylesheet
    self.title = 'GetHelp'
    rmq.append(MainView, :root_view)
    self.navigationController.navigationBar.setBarTintColor(rmq.color.from_hex("1AD6FD"))
  end
  
  def profile
    if ProfileData.data.count < 1
      self.navigationController.pushViewController(ProfileViewController.new, animated: true)
    else
      App.alert("Alert", {cancel_button_title: "OK", message: "You already entered details in profile"})
    end
  end
  
  def send_sms
    if ProfileData.data.count < 1
      App.alert("Alert", {cancel_button_title: "OK", message: "Please fill details to send SMS in profile"})
    else
      table_data = ProfileData.data 
      BW::Location.get_once do |result|
        if result.is_a?(CLLocation)
          latitude = result.coordinate.latitude 
          longitude = result.coordinate.longitude
          BW::SMS.compose({delegate: self, to: [(table_data[0].phone_number1).to_s, (table_data[0].phone_number2).to_s, (table_data[0].phone_number3).to_s, (table_data[0].phone_number4).to_s, (table_data[0].phone_number5).to_s].compact, message: "My name is #{table_data[0].fullName},\nMy age is #{table_data[0].age},\n i am #{table_data[0].gender},\nand i want to send my following Message: #{table_data[0].message},\nMy Phone Status:,\nBattery charge level: #{(Battery.battery_percentage*100).round.abs.to_s}%,\nMy Gps coordinates:\nLatitude: #{latitude},\nLongitude: #{longitude}\nand google map link https://maps.google.com/maps?q=#{latitude},#{longitude}", animated: false})
        end
      end
    end
  end
  
  def device_status
    self.navigationController.pushViewController(DeviceStatusController.new, animated: true)
  end
end
