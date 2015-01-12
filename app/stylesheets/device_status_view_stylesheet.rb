module DeviceStatusViewStylesheet 
  def device_label(st)
    st.frame = {t: 0, l: 0, w: 320, h: 160}
    st.background_color = color.from_hex('FFDB4C')
    st.text = "Device Status"
    st.text_alignment = :center
    st.color = color.white
    st.font = font.system(25)
  end
  
  def gps_label(st)
    st.frame = {t: 160, l: 0, w: 320, h: 40}
    st.text = "GPS Coordinates"
    st.text_alignment = :center
    st.background_color = color.from_hex("81F3FD")
    st.font = font.system(20)
    st.color = color.white
  end
  
  def latitude_label(st)
    st.frame = {t: 230, l: 90, w: 70, h: 40}
    st.text = "Latitude:"
    st.color = color.white
  end
  
  def latitude_value(st)
    st.frame = {t: 235, l: 170, w: 140, h: 30}
    st.background_color = color.from_hex("FFDB4C")
    st.text = " latitude value "
    st.corner_radius = 5
  end
  
  def longitude_label(st)
    st.frame = {t: 280, l: 80, w: 90, h: 40}
    st.text = "Longitude:"
    st.color = color.white
  end
  
  def longitude_value(st)
    st.frame = {t: 285, l: 170, w: 140, h: 30}
    st.background_color = color.from_hex("FFDB4C")
    st.text = " longitude value "
    st.corner_radius = 5
  end
  
  def battery_label(st)
    st.frame = {t: 350, l: 0, w: 320, h: 40}
    st.text = "Battery Status"
    st.text_alignment = :center
    st.background_color = color.from_hex("81F3FD")
    st.font = font.system(20)
    st.color = color.white
  end
  
  def battery_label_value(st)
    st.frame = {t: 450, l: 80, w: 230, h: 40}
    st.background_color = color.from_hex("FFDB4C")
    st.text_alignment = :center
    st.text = "Battery charge level"
    st.corner_radius = 5
  end
end