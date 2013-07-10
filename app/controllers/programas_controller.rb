class ProgramasController < ApplicationController
  
  before_filter :find_programa

  def index
    @nrp = (params[:registro] != nil)? params[:registro].to_i : 3

   if ((@nrp) <= 0)
     @nrp = 3
   end 

    @programas = Programa.search(params[:search]).paginate(:per_page=>(@nrp), :page=>params[:page])      

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
    @programas = Programa.all
  end

  def update
    @programa = Programa.find(params[:id])
    render :action => :edit unless @programa.update_attributes(params[:programa])
  end

  def destroy
    @programa = Programa.find(params[:id])
    @programa.destroy
    @programas = Programa.all
  end

  private

  def find_programa
    @programa = Programa.find(params[:id]) if params[:id]
  end
  
end
