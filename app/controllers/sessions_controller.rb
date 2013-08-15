class SessionsController < ApplicationController
	
 def create
     user = login(params[:username],params[:password])
     if user
             redirect_back_or_to root_path
     else
   		alert = 'El Usuario o Contraseña son Invalidas' 
   		                        
     end
 end

 def destroy
	 logout
	 redirect_to root_path
	end
end
