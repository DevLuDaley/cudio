# frozen_string_literal: true

class StudiosController < ApplicationController
  # def index
  #   @studios = Studio.all
  # end

  def index
 @studios = Studio.all
   @zats = Zat.all
   @engineers = Engineer.all
   @artists = Artist.all
   # redirect_to action: 'index'
 end


def new
  @studio = Studio.new
end



def show
    index
    # binding.pry
    @studio = Studio.find(params[:id])
    #     redirect_to action: 'index'
    
  end
end
