class EngineersController < ApplicationController
#class EngineersController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?


  def index
    @engineers = Engineer.all
    @zats = Zat.all
    @studios = Studio.all
    @artists = Artist.all
   #    redirect_to action: 'index'
 end



# def destroy
#     binding.pry
#         # Engineer.find(session[:engineer_id]).destroy
#       #  session_cookie.destroy
#       sign_out @engineer
# #           redirect_to '/'
# new_engineer_session_path
# #devise_scope :engineer do
#   #  get '/signout', to: 'devise/sessions#destroy', as: :signout
#  # end
# # destroy_engineer_session_url
# #redirect_to destroy_engineer_session_path, method: :delete
#         #    redirect_to '/engineer
# end



# def show
#     index
#     # binding.pry
#     @engineer = Engineer.find(params[:id])
#     #     redirect_to action: 'index'
    
#   end




  def destroy
#    session[:engineer_id] = nil
 session[:current_user_id] = user.id
sign_out @engineer 
redirect_to root_url, notice: "Logged out!"
  end

end
