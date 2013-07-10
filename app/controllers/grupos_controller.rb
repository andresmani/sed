class GruposController < ApplicationController
 
  before_filter :find_programa_grupos

  def index
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 

    @grupos = @programa.grupos.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])      


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grupos }
    end
  end

  def new
    @grupo = Grupo.new
  end

  def create
    @grupo = @programa.grupos.build(params[:grupo])
    render :action => :new unless @grupo.save
    @grupos = Grupo.all  
  end

  def update
    @grupo = Grupo.find(params[:id])
    render :action => :edit unless @grupo.update_attributes(params[:grupo])
  end

  def destroy
    @grupo = Grupo.find(params[:id])
    @grupo.destroy
    @grupos = Grupo.all
  end

  private

  def find_programa_grupos
    @programa = Programa.find(params[:programa_id])
    @grupo = Grupo.find(params[:id]) if params[:id]
  end

end
