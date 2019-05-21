class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
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

end