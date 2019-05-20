# frozen_string_literal: true

class ZatsController < ApplicationController
  def index
    @zats = Zat.all
    @engineers = Engineer.all
    @studios = Studio.all
    @artists = Artist.all
  end

  def show
    @zat = Zat.find(params[:id])
  end

  def new
    @zat = Zat.new
    # params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)

    index
  end

  def create
    @zat = Zat.new(zat_params)
    index
    if @zat.save
      redirect_to action: 'index' # , notice: 'Recording Session created'
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
    @zat.update(params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id))
    redirect_to zat_path(@zat)
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

  def delete
    Zat.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def show_studios
    @studio = Studio.find(params[:id])
  end
end

private

def zat_params
  params.require(:zat).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
end
