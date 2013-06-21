class UnidadesController < ApplicationController
  
  def index
    @unidades = Unidad.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @unidades }
    end
  end

  def show
    @unidad = Unidad.find(params[:id])
  end

  def new
    @unidad = Unidad.new
  end

  def edit
    @unidad = Unidad.find(params[:id])
  end
  
  def create
    @unidad = Unidad.new(params[ :unidad])
    render :action => :new unless @unidad.save
    @unidades = Unidad.all
  end

  def update
    @unidad = Unidad.find(params[:id])
    render :action => :edit unless @unidad.update_attributes(params[:unidad])
  end

  def destroy
    @unidad = Unidad.find(params[:id])
    @unidad.destroy
  end

end
