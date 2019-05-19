class Zat < ApplicationRecord

  belongs_to :engineer
  belongs_to :artist
  belongs_to :studio


STATUS = {
        :incomplete => 0,
        :complete => 1
    }
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
