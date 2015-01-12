class MainView < UIView
  def rmq_build
    q = rmq(self)
    q.apply_style :root_view
    q.append(UIButton, :profile_label).on(:touch_up_inside){ controller.profile }
    q.append(UIButton, :send_sms_label).on(:touch_up_inside){ controller.send_sms }
    q.append(UIButton, :Device_label).on(:touch_up_inside) { controller.device_status }
  end
  
  def controller
    @controller ||= rmq(:root_view).view_controller
  end
end
