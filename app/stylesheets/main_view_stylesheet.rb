module MainViewStyleSheet
  def profile_label(st)
    st.frame = {t: 0, l: 0, w: 320, h: 166.66}
    st.background_color = color.from_hex('1AD6FD')
    st.text = "Profile"
    st.font = font.system(25)
    st.color = color.white
  end
  
  def send_sms_label(st)
    st.frame = {t: 166, w: 320, h: 166.66}
    st.background_color = color.from_hex('FF1300')
    st.text = "Send SMS"
    st.font = font.system(25)
    st.color = color.white
  end
  
  def Device_label(st)
    st.frame = {t: 332, w: 320, h: 172}
    st.background_color = color.from_hex('1AD6FD')
    st.text = "Device Status"
    st.font = font.system(25)
    st.color = color.white
  end
end