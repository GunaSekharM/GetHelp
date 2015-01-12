class ProfileView < UIView
  def rmq_build
    q = rmq(self)
    q.apply_style :root_view
    q.append(UILabel, :heading)
    q.append(UITextField, :full_name).tag(:full_name_text)
    q.append(UILabel, :gender).tag(:gender_text)
    q.append(UIButton, :male_button).on(:touch_up_inside) {|sender| controller.gender(sender)}.tag(:gender_tag)
    q.append(UIButton, :female_button).on(:touch_up_inside) {|sender| controller.gender(sender)}.tag(:gender_tag)
    q.append(UITextField, :sos).tag(:sos_text)
    q.append(UITextField, :ph_no).tag(:phone_number_text).validates(:digits).validates(:length, exact_length: 10)
    q.append(UIButton, :add_button).on(:tap) {controller.add_phone}
  end
  
  def controller
    @controller ||= self.rmq_data.view_controller
  end
end