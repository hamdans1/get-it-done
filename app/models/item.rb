class Item < ActiveRecord::Base
  belongs_to :list
  
    validates :body, length: {maximum: 50}, presence: true
    validates :list, presence: true
    
end
