module DeviceStatusViewStylesheet 
  def device_label(st)
    st.frame = {t: 65, l: 0, w: 320, h: 100}
    st.background_color = color.from_hex('FFDB4C')
    st.text = "Device Status"
    st.text_alignment = :center
    st.color = color.white
    st.font = font.system(30)
  end
  
  def gps_label(st)
    st.frame = {t: 165, l: 0, w: 320, h: 40}
    st.text = "GPS Coordinates"
    st.text_alignment = :center
    st.background_color = color.from_hex("81F3FD")
    st.font = font.system(20)
    st.color = color.white
  end
  
  def latitude_label(st)
    st.frame = {t: 240, l: 50, w: 70, h: 40}
    st.text = "Latitude:"
    st.color = color.white
  end
  
  def latitude_value(st)
    st.frame = {t: 245, l: 150, w: 140, h: 30}
    st.background_color = color.from_hex("FFDB4C")
    st.text = "latitude value"
    st.text_alignment = :center
    st.corner_radius = 5
  end
  
  def longitude_label(st)
    st.frame = {t: 280, l: 50, w: 90, h: 40}
    st.text = "Longitude:"
    st.color = color.white
  end
  
  def longitude_value(st)
    st.frame = {t: 285, l: 150, w: 140, h: 30}
    st.background_color = color.from_hex("FFDB4C")
    st.text = "longitude value"
    st.text_alignment = :center
    st.corner_radius = 5
  end
  
  def battery_label(st)
    st.frame = {t: 360, l: 0, w: 320, h: 40}
    st.text = "Battery Status"
    st.text_alignment = :center
    st.background_color = color.from_hex("81F3FD")
    st.font = font.system(20)
    st.color = color.white
  end
  
  def battery_label_value(st)
    st.frame = {t: 450, w: 230, h: 40}
    st.centered = :horizontal
    st.background_color = color.from_hex("FFDB4C")
    st.text_alignment = :center
    st.text = "Battery charge level"
    st.corner_radius = 5
  end
end