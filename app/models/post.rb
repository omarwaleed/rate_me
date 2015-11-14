class Post < ActiveRecord::Base

	validates :name , :type , :picture , presence: true
	validates :name, length: { maximum: 50 }, uniqueness:true
	validates :gender, inclusion: %w(song book series movie)

end
