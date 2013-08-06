class UsersController < ApplicationController
  before_filter :require_login
 def index
   @users = User.all

   respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
 end

 def new
   @user = User.new
 end

 def create
   @user = User.new(params[:user])
   if @user.save
     redirect_to root_url, :notice => "Cuenta Creada!"
   else
     render :new
   end
 end

 def edit
   @user = User.find(params[:id])
 end

 def update
   @user = User.find(params[:id])
   respond_to do |format|
     if @user.update_attributes(params[:user])
       format.html { redirect_to users_path, notice: 'Escalado talla was successfully updated.' }
       format.json { head :no_content }
     else
       format.html { render action: "edit" }
       format.json { render json: @user.errors, status: :unprocessable_entity }
     end
   end
 end

 def destroy
  @user = User.find(params[:id])
  @user.destroy
 end

end