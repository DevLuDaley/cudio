# frozen_string_literal: true

class StudiosController < ApplicationController
  # def index
  #   @studios = Studio.all
  # end

  def index
 @studios = Studio.all
   # @zats = Zat.all
   # @engineers = Engineer.all
   # @artists = Artist.all
   # redirect_to action: 'index'
 end
end
