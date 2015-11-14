class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        validates :username, :email , :password , :gender , presence: true, length: { maximum: 30 }
        validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness:true
        validates :password, length: 6..20
        validates :gender, inclusion: %w(male female)
        validate :that_born_on_is_not_in_the_future

	def that_born_on_is_not_in_the_future
		self.errors.add :date_of_birth, 'is in the future' \
	unless self.born_on <= Date.today
end
