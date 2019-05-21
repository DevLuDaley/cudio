class Zat < ApplicationRecord

  belongs_to :engineer
  belongs_to :artist
  belongs_to :studio


STATUS = {
        :incomplete => 0,
        :complete => 1
    }


validates :engineer_id, presence: true, length: { minimum: 1 }
validates :artist_id, presence: true, length: { minimum: 1 }
validates :studio_id, presence: true, length: { minimum: 1 }

#use the validation below to ensure that an appointment/session date is entered
#validates :appointment_date, presence: true, length: { minimum: 1 }
#validates :appointment_date, uniqueness: true


    #use hash above to set up key 10:00 v3
    #clearly define meaning of #0 || #1 in context
    def complete?
        self.status == STATUS[:complete]    
        #self.status == 1
    end

    def incomplete?
        self.status == STATUS[:incomplete]
        #self.status == 0
    end

    def complete!
        self.status = STATUS[:complete]
        self.save
        #self.status == 0
    end

    def incomplete!
        self.status = STATUS[:incomplete]
        self.save
        #self.status == 0
    end




end
