class User < ApplicationRecord
	before_save { self.email = self.email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	#Validations
  validates_presence_of :name, :password_digest
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 
  #encrypt password
  has_secure_password
	
	has_many :customers
end
