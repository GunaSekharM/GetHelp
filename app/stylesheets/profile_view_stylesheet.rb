module ProfileViewStylesheet
  def heading(st)
    st.frame = {t: 100, l: 30, w: 320, h: 40}
    st.text = "Fill your GetHelp Profile"
    st.font = font.system(25)
    st.color = color.white
  end
  
  def full_name(st)
    st.frame = {t: 150, l: 20, w: 270, h: 30}
    st.background_color = color.white
    st.placeholder = " Full Name "
    st.corner_radius = 5
    st.view.keyboardType = UIKeyboardTypeAlphabet
  end
  
  def gender(st)
    st.frame = {t: 190, l: 20, w: 80, h: 30}
    st.corner_radius = 5
    st.text = "Gender: "
  end
  
  def male_button(st)
    st.frame = {l: 100, t: 190, w: 60, h: 30}
    st.image = UIImage.imageNamed("unchecked")
    st.image_selected = UIImage.imageNamed("checked")
    st.text = "Male"
    st.color = color.gray
    st.font = rmq.font.system(15)
  end
  
  def female_button(st)
    st.frame = {l: 200, t: 190, w: 80, h: 30}
    st.image = UIImage.imageNamed("unchecked")
    st.image_selected = UIImage.imageNamed("checked")
    st.text = "Female"
    st.color = color.gray
    st.font = rmq.font.system(15)
  end
    
  
  def sos(st)
    st.frame = {t: 230, l: 20, w: 270, h: 30}
    st.background_color = color.from_hex("FFDB4C")
    st.corner_radius = 5
    st.placeholder = " SOS Message "
    st.view.keyboardType = UIKeyboardTypeAlphabet
    st.text_color = color.red
  end
  
  def ph_no(st)
    st.frame = {t: 270, l: 20, w: 200, h: 30}
    st.background_color = color.white
    st.corner_radius = 5
    st.placeholder = " PhoneNumber "
    st.view.keyboardType = UIKeyboardTypeNumberPad
  end  
  
  def add_button(st)
    st.frame = {t: 275, l: 240, w: 20, h: 20}
    st.text = "+"
  end
end