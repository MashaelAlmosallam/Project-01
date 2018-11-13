class ApplicationController < ActionController::Base
<<<<<<< HEAD
     before_action :configure_permitted_parameters, if: :devise_controller?
     protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :image])
  end
=======
>>>>>>> 775e15c3296e0da7b98b7c911688fe3c4f3eaa37
end
