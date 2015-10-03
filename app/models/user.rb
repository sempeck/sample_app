class User < ActiveRecord::Base
   # attr_accessible(:name, :email)
   # attr_accessor :name, :email
     validates :name,  presence: true, length: { maximum: 50 }
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
     validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
