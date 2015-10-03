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

          trait :with_comments do 
            after(:create) do |place|
              place.comments << create(:comment)
              place.comments << create(:comment2)
            end 

          end 
        end  


      factory :comment do
      	message "This place sucks"
      	rating '1_star' 
      	association :place
      	association :user
      end 


        factory :comment2, parent: :comment do
        rating '3_star' 
        end




  

end