class ProgramasController < ApplicationController
  

  def index
    @programas = Programa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @programas }
    end
  end

  def show
    @programa = Programa.find(params[:id])    
  end

  def new
    @programa = Programa.new
  end

  def edit
     @programa = Programa.find(params[:id])
  end

  def create
    @programa = Programa.new(params[:programa])
    render :action => :new unless @programa.save
  end

  def update
    @programa = Programa.find(params[:id])
    render :action => :edit unless @programa.update_attributes(params[:programa])
  end

  def destroy
    @programa = Programa.find(params[:id])
    @programa.destroy
  end
  
end
