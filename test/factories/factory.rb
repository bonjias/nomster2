FactoryGirl.define do
factory :user do 
  sequence :email do |n|
      "me#{n}@gmail.com"
    end
    password "password99"
    password_confirmation "password99"

  end  


factory :place do 
  name " Toasty" 
  description " best french toast"
  address "14 Gerard Street, Huntington, Ny, 11743 "
  association :user
  end  


factory :comment do
	message "This place sucks"
	rating '1_star' 
	association :place
	association :user


  end 

  


end 