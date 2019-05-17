class Artist < ApplicationRecord

 has_many :zats #adds methods to my model
          has_many :engineers, through: :zats
          has_many :studios, through: :zats

end
