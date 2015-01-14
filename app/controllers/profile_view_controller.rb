class ProfileViewController < UIViewController
  def viewDidLoad
    rmq.stylesheet = ProfileViewControllerStyleSheet
    self.navigationController.navigationBar.setBarTintColor(rmq.color.from_hex("81F3FD"))
    
    rightButton = UIBarButtonItem.alloc.initWithTitle("Save", style: UIBarButtonItemStyleBordered, target: self, action: "upload")
    barButtonTitle = {UITextAttributeTextColor => UIColor.whiteColor, NSFontAttributeName => UIFont.fontWithName("HelveticaNeue-Bold", size: 17)}
    UIBarButtonItem.appearance.setTitleTextAttributes(barButtonTitle, forState: UIControlStateNormal)
    self.navigationItem.rightBarButtonItem = rightButton
    
    leftButton = UIBarButtonItem.alloc.initWithTitle("Back", style: UIBarButtonItemStyleBordered, target: self, action: "home_navigation")
    UIBarButtonItem.appearance.setTitleTextAttributes(barButtonTitle, forState: UIControlStateNormal)
    self.navigationItem.leftBarButtonItem = leftButton
    
    rmq.append(ProfileView, :root_view)
    rmq.stylesheet = ProfileViewControllerStyleSheet
    @phone_numbers = []
  end
  
  def add_phone
    phone_number = rmq(:phone_number_text).get
    if rmq(:phone_number_text).valid?
      if (0..5).include? (@phone_numbers.count)
        @phone_numbers << rmq(:phone_number_text).get.text
        phone_number.text = ""
      else
        App.alert("Alert", message: "Only five phone number can add")
        phone_number.text = ""
      end
    else
      App.alert("Alert", message: "Please enter exact 10 digits")
    end
  end
  
  def home_navigation
    self.navigationController.popToRootViewControllerAnimated(true)
  end
  
  def upload
    if rmq(:full_name_text).get.text != "" && @gender_value != nil && rmq(:sos_text).get.text != "" && (1..5).include? (@phone_numbers.count)
      ProfileData.create_table(rmq(:full_name_text).get.text, @gender_value, rmq(:sos_text).get.text, @phone_numbers[0], @phone_numbers[1], @phone_numbers[2], @phone_numbers[3], @phone_numbers[4])
      self.navigationController.popToRootViewControllerAnimated(true)
      App.alert("Alert", message:"Data Saved")
    else
      App.alert("Alert", message: "Give all details in the respective text fields")
    end
  end
  
  def gender(sender)
    value = sender
    rmq(:gender_tag).each do |sender|
      sender.selected = false
    end
    value.selected = true
    @gender_value = value.titleLabel.text
  end
end