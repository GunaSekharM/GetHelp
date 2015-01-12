class ProfileViewControllerStyleSheet < ApplicationStylesheet
  include ProfileViewStylesheet
  def root_view(st)
    st.background_color = color.from_hex("34AADC")
    st.frame = {l: 0, t: 0, width: rmq.device.width, height: rmq.device.height}
  end
end