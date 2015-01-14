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
      profile = ProfileData.data.first
      BW::Location.get_once do |result|
        if result.is_a?(CLLocation)
          latitude = result.coordinate.latitude
          longitude = result.coordinate.longitude
          battery_status = Battery.battery_percentage
          recipients = [profile.phone_number1, profile.phone_number2, profile.phone_number3, profile.phone_number4, profile.phone_number5]

          content = "My name is #{profile.fullName},\n
          I am #{profile.gender},\n
          and I want to send my following Message: #{profile.message},\n
          My Phone Status:,\n
          Battery charge level: #{battery_status}%,\n
          My GPS coordinates:\n
          Latitude: #{latitude},\n
          Longitude: #{longitude}\n
          and google map link https://maps.google.com/maps?q=#{latitude},#{longitude}"

          BW::SMS.compose({delegate: self, to: recipients, message: content, animated: false}) do |result, error|
            if result.sent?
              App.alert("Alert", {cancel_button_title: "OK", message: "Message sent successfully"})
            elsif result.canceled?
              App.alert("Alert", {cancel_button_title: "OK", message: "Message sending cancelled"})
            elsif result.failed?
              App.alert("Alert", {cancel_button_title: "OK", message: "Message sending failed"})
            elsif error
              App.alert("Alert", {cancel_button_title: "OK", message: "#{error.localizedDescription}"})
            end
          end
        end
      end
    end
  end

  def device_status
    self.navigationController.pushViewController(DeviceStatusController.new, animated: true)
  end
end
