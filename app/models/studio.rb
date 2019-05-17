class Studio < ApplicationRecord

 has_many :zats #adds methods to my model
          has_many :engineers, through: :zats
          has_many :artists, through: :zats

end
