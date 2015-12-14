class Post < ActiveRecord::Base

	validates :name , :genre , presence: true
	validates :name, uniqueness:true
	# validates :type, inclusion: %w(song book series movie)

end
