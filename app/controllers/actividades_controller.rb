class ActividadesController < ApplicationController
  # * *requiere inicio de sesion para acceder a modelo*
  before_filter :require_login

  # * *es un filtro para buscar el id de temas requerida por actividades para un detalle maestro*
  before_filter :find_tema_actividades

  def index
  # * *contador para la paginacion limitando el numero de registros visibles por pagian*
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 

   # ** modelo para el buscador*
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
  # * *metodo para buscar le id de temas(padre) para dettale masestro con actividad(hijo)*
  def find_tema_actividades
    @tema = Tema.find(params[:tema_id])  
    @actividad = Actividad.find(params[:id]) if params[:id]  
  end
end
