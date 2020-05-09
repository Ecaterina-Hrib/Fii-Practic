class Game < ApplicationRecord
    has_one_attached :image
    validates :name, :price,:distribution, presence: true
    
   
end