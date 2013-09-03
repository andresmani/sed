class SessionsController < ApplicationController
	
 def create
     user = login(params[:username],params[:password])
     if user
             redirect_back_or_to root_path
     else
   		redirect_to '#myModal1'
      flash.alert = 'El Usuario o Contraseña son Invalidas' 
     end
 end

 def destroy
	 logout
	 redirect_to root_path
	end
end
