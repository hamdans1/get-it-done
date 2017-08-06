class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
    
    validates :title, length: {minimum: 5, maximum: 50}, presence: true
    validates :private, presence: true
    validates :user, presence: true
    
end
