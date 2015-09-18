FactoryGirl.define do
factory :user do 
  email "jbias@yesco.com" 
  password "password123"
    end  
factory :place do 
  name " Toasty" 
  description " best french toast"
  address " 14 gerard street, Huntington, Ny, 11743 "
  association :user
  end  


factory :comment do
	message "This place sucks"
	rating '1_star' 
	association :place
	association :user


  end 

  


end 