# frozen_string_literal: true

class Engineers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]



  def destroy
#    session[:engineer_id] = nil
 session[:current_user_id] = user.id
sign_out @engineer 
redirect_to root_url, notice: "Logged out!"
  end



  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
