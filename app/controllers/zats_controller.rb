class ZatsController < ApplicationController
 
   def index
      @zats = Zat.all
      @engineers = Engineer.all
   end

   def show
      @zat = Zat.find(params[:id])
   end
  
   def new
      @zat = Zat.new
      @subjects = Subject.all
   end

   def book_params
      params.require(:zats).permit(:artist, :studio, :engineer, :appointment_date)
   end

   def create
      @zat = Zat.new(zat_params)

      if @zat.save
         redirect_to :action => 'list'
      else
         @studios = Studio.all
         render :action => 'new'
      end
   end
   
   def edit
      @zat = Zat.find(params[:id])
      @studios = Studio.all

   end
   
   def zat_param
      params.require(:artist, :studio, :engineer, :appointment_date)
   end
   
   def update
      @zat = Zat.find(params[:id])
      
      if @zat.update_attributes(zat_param)
         redirect_to :action => 'show', :id => @zat
      else
         @studios = Studio.all
         render :action => 'edit'
      end
   end
   
   def delete
      Zat.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_studios
      @studio = Studio.find(params[:id])
   end

end