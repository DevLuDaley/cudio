class Studio < ApplicationRecord

 has_many :zats #adds methods to my model
          has_many :engineers, through: :zats
          has_many :artists, through: :zats

validates :name, presence: true, length: { minimum: 1 }
validates :name, uniqueness: true

validates :location, presence: true, length: { minimum: 1 }




end
