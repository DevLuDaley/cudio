class CallbacksController < Devise::OmniauthCallbacksController 

  def github
    @engineer = Engineer.from_omniauth(request.env["omniauth.auth"])
    signin_and_redirect @engineer
  end

end
