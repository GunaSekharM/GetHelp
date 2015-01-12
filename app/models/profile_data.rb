class ProfileData < CDQManagedObject
  def self.create_table(*params)
    ProfileData.create(fullName: params[0], gender: params[1], message: params[2], phone_number1: params[3], phone_number2: params[4], phone_number3: params[5], phone_number4: params[6], phone_number5: params[7])
    cdq.save
  end
  def self.data
    ProfileData.array
  end
end