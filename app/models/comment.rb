class Comment < ActiveRecord::Base

	validates :content , :presence :true, length: { maximum: 100 }
	
end
