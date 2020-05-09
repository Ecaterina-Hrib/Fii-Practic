class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
     before_action :authenticate_account!
     

     protected
   
     def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
     end

     helper_method :admin?
     def authorize
         unless admin?
          flash[:error] = "unauthorize acces"
          redirect_to root_path
          false
         end
     end
     def admin?
      session[:password] == 'foobar'
     end
   end