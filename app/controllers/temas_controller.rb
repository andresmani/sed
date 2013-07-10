class TemasController < ApplicationController

  before_filter :find_unidad_temas

  def index
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 

    @temas = @unidad.temas.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])      


    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @temas }
    end
  end

  def show
    @tema = Tema.find(params[:id])    
  end

  def new
    @tema = Tema.new
  end

  def edit
    @tema = Tema.find(params[:id])    
  end

  def create
    @tema = @unidad.temas.build(params[:tema])
    render :action => :new unless @tema.save
    @temas = Tema.all
  end

  def update
    @tema = Tema.find(params[:id])
    render :action => :edit unless @tema.update_attributes(params[:tema])

  end

  def destroy
    @tema = Tema.find(params[:id])
    @tema.destroy
    @temas = Tema.all
  end

  private

  def find_unidad_temas
    @unidad = Unidad.find(params[:unidad_id])
    @tema = Tema.find(params[:id]) if params[:id]
  end

end
