class MainControllerStylesheet < ApplicationStylesheet
  include MainViewStyleSheet
  def root_view(st)
    st.background_color = color.white
    st.frame = {l: 0, t: 0, width: rmq.device.width, height: rmq.device.height}
  end
end