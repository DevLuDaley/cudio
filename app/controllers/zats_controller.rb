# frozen_string_literal: true

class ZatsController < ApplicationController
http_basic_authenticate_with name: "lu", password: "password", except: [:index, :show]


  def index
    @engineers = Engineer.all
    @studios = Studio.all
    @artists = Artist.all
    if params[:artist_id]
      @zats = Artist.find(params[:artist_id]).zats
    elsif params[:engineer_id]
      @zats = Engineer.find(params[:engineer_id]).zats
    elsif params[:studio_id]
      @zats = Studio.find(params[:studio_id]).zats
    else
      @zats = Zat.all
   #    redirect_to action: 'index'
 end
 end

=begin
#zats#index action to account for whether the engineer/user is trying to 
access the index of all zats/recording_sessions (Zat.all) or 
just the index of all zats/recording_sessions 
by a certain artist (Artist.find(params[:artist_id]).zats). 
The conditional hinges on 
whether there's an :artist_id key in the params hash — in other words, 
whether the user navigated to /artists/:id/zats or simply /zats. 
=end



  def show
    index
    # binding.pry
    @zat = Zat.find(params[:id])
    #     redirect_to action: 'index'
    
  end

  def new
    @zat = Zat.new
    # params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
    # if artist_id or not -- that
    # if nested_--tind artist build --what is associated
    index
  end

  def create
    # binding.pry
    @zat = Zat.new(zat_params)
    index
    # @zat = Zat.find(params[:id])
    if @zat.save
      # raise params.inspect
#      redirect_to action: 'index' # , notice: 'Recording Session created'
      redirect_to @zat # , notice: 'Recording Session created'
    else
      # @studios = Studio.all
      render action: 'new'
    end
  end

  def edit
    @zat = Zat.find(params[:id])
    index
  end

  #   def zat_param
  #     params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
  #   end

  # def update
  # @zat = Zat.find(params[:id])
  # @zat.update(params.require(:zat).permit(:appointment_date, :studio, :engineer, :artist)
  # raise params.inspect
  # if @zat.update_attributes(zat_param)
  #    redirect_to action: 'show', id: @zat
  #  else

  #    @zats = Zat.all
  #    @engineers = Engineer.all
  #    @engineer = Engineer.find(params[:id])
  #    @studios = Studio.all
  #    @artists = Artist.all
  #    render action: 'edit'
  # end
  # end

  def update
    index
    @zat = Zat.find(params[:id])
    # raise params.inspect
    if @zat.update(params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id))
      # binding.pry
      redirect_to zat_path(@zat)

    else
      render 'edit'
  end
  end

  #   def update
  #     @zat = Zat.find(params[:id])
  #     #@zat.update(params.require(:zat).permit(:appointment_date, :studio, :engineer, :artist)
  #     raise params.inspect
  #     if @zat.update_attributes(zat_param)
  #       redirect_to action: 'show', id: @zat
  #     else

  #       @zats = Zat.all
  #       @engineers = Engineer.all
  #       @engineer = Engineer.find(params[:id])
  #       @studios = Studio.all
  #       @artists = Artist.all
  #       render action: 'edit'
  #     end
  #   end

  def destroy
    Zat.find(params[:id]).destroy
    redirect_to action: 'index'
    #redirect_to zat_path
  end

  def show_studios
    @studio = Studio.find(params[:id])
  end
end

private

def zat_params
  params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
end
