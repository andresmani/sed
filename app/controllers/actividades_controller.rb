class ActividadesController < ApplicationController

  def index
    @actividades = Actividad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @actividades }
    end
  end

  def show
    @actividad = Actividad.find(params[:id])    
  end

  def new
    @actividad = Actividad.new
  end

  def create
    @actividad = Actividad.new(params[:actividad])
    render :action => :new unless @actividad.save    
  end

   def edit
    @actividad = Actividad.find(params[:id])    
  end

  def update
    @actividad = Actividad.find(params[:id])
    render :action => :edit unless @actividad.update_attributes(params[:actividad])
  end

  def destroy
    @actividad = Actividad.find(params[:id])
    @actividad.destroy
  end
end
