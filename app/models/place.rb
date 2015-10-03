class Place < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :photos 

	geocoded_by :address
  	#after_validation :geocode


	validates :name, :presence => true
	validates :address, :presence => true
	validates :description, :presence => true, :length => { :minimum => 4 }

	def last_comment
		self.comments.order("id ASC").last 
	end



  def average_rating
  
    ratings = []

  	self.comments.each do |x|

  			 ratings << x.rating[0].to_i 
  					end 
	 
  	average = ratings.sum/ratings.size

  	if average > 1   
  		average = "#{average.to_s}_stars"
  	else
  	average = "1_star"  
  	end 

  	return Comment::RATINGS.invert[average]

  end 
 
end
