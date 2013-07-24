class ActividadesController < ApplicationController
  before_filter :require_login
  before_filter :find_tema_actividades

  def index
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 

    @actividades = @tema.actividades.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])      


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
    @actividad = @tema.actividades.build(params[:actividad])
    render :action => :new unless @actividad.save 
    @actividades = Actividad.all   
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
    @actividades = Actividad.all
  end

  private
  def find_tema_actividades
    @tema = Tema.find(params[:tema_id])  
    @actividad = Actividad.find(params[:id]) if params[:id]  
  end
end
