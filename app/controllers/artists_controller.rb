class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @zats = Zat.all
    @engineers = Engineer.all
    @studios = Studio.all
    #@artists = Artist.all


  end


  def edit
    @artist = Artist.find(params[:id])
 #   index
  end

def update
#    index
    @artist = Artist.find(params[:id])
    # raise params.inspect
    if @artist.update(params.require(:artist).permit(:artist_name))
      # binding.pry
      redirect_to artist_path(@artist)

    else
      render 'edit'
  end


end



def show
    index
    # binding.pry
    @artist = Artist.find(params[:id])
    #     redirect_to action: 'index'
    
  end



end