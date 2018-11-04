class User < ApplicationRecord
	before_save { self.email = self.email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	#Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 
  #encrypt password
  has_secure_password
	
	has_many :customers
end
