class SessionController < ApplicationController
     def new
       
    end
    def create
        account=Account.authentificate(params[:session][:email],params[:session][:password])
        if account.nil?
            flash.now[:error]="Invalid email/password combination."
            render.new
        else 
            sign_in account
            redirect_to account
       end
    end
    def destroy
       sign_out
        redirect_to signin_path
    end
end
