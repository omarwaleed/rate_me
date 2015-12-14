class User < ActiveRecord::Base
  validates :username, :email , :password , :gender , presence: true, length: { maximum: 30 }
        validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness:true
        validates :password, length: 6..20
        validates :gender, inclusion: %w(male female)
        validate :that_born_on_is_not_in_the_future
        validates_uniqueness_of :username

	def that_born_on_is_not_in_the_future
		self.errors.add :date_of_birth, 'is in the future' \
	  unless self.date_of_birth <= Date.today
	end
end
