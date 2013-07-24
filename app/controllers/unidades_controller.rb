class UnidadesController < ApplicationController
  before_filter :require_login
  before_filter :find_unidad
  
  def index
     @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

    if ((@nrp) <= 0)
     @nrp = 3
   end

    @unidades = Unidad.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])

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
    @unidades = Unidad.all
  end

  private

  def find_unidad
    @unidad = Unidad.find(params[:id]) if params[:id]  
  end

end
