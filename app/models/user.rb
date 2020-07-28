class User < ActiveRecord::Base

	has_secure_password
	
	validates :password, length: { minimum: 4 }
  validates :first_name, presence: true
  validates :last_name, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }

	def self.authenticate_with_credentials(user_email, password)
		self.find_by(email: user_email.strip.downcase).try(:authenticate, password)
	end

end
