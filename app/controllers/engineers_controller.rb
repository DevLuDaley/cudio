class EngineersController < ApplicationController
#class EngineersController < Devise::RegistrationsController


  def index
    @engineers = Engineer.all
    @zats = Zat.all
    @studios = Studio.all
    @artists = Artist.all
   #    redirect_to action: 'index'
 end


def show
    index
    # binding.pry
    @engineer = Engineer.find(params[:id])
    #     redirect_to action: 'index'
    
  end



end
