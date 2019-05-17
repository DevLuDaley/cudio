class Zat < ApplicationRecord

  belongs_to :engineer
  belongs_to :artist
  belongs_to :studio
  
end
