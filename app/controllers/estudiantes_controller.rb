class EstudiantesController < ApplicationController
  
  def index
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 
   @estudiantes = Estudiante.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])      

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estudiantes }
    end
  end

  def show
    @estudiante = Estudiante.find(params[:id])
  end

  def new
    @estudiante = Estudiante.new
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  def create
    @estudiante = Estudiante.new(params[:estudiante])
    render :action => :new unless @estudiante.save
    @estudiantes = Estudiante.all
  end

  def update
    @estudiante = Estudiante.find(params[:id])
    render :action => :edit unless @estudiante.update_attributes(params[:estudiante])

  end

  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy
    @estudiantes =Estudiante.all
  end
end
