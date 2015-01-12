class DeviceStatusControllerStyleSheet < ApplicationStylesheet
  include DeviceStatusViewStylesheet
  def root_view(st)
    st.background_color = color.from_hex("1AD6FD")
    st.frame = {l: 0, t: 0, width: rmq.device.width, height: rmq.device.height}
  end
end