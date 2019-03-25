class User < ApplicationRecord
  before_save { self.email = email.downcase}
  validates :name, presence:true, length: {minimum:3, maximum:50}
  validates :username, presence:true, uniqueness: {case_sensitive: false}

  has_secure_password 
end
