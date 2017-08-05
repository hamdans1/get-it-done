class User < ActiveRecord::Base
    has_many :lists
    
    validates :email, length: {minimum: 3, maximum: 50}, presence: true, uniqueness: {case_sensitive: false}
    validates :password_digest, length: {minimum: 5, maximum: 50}, presence: true
    
end
