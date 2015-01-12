schema "0001 intial" do
  entity 'ProfileData' do
    string :fullName, optional: false
    string :gender, optional: false
    string :message, option: false
    string :phone_number1, option: false
    string :phone_number2, option: true
    string :phone_number3, option: true
    string :phone_number4, option: true
    string :phone_number5, option: true
  end
end
