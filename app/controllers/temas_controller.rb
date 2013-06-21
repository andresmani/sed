class TemasController < ApplicationController

  def index
    @temas = Tema.all

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
    @tema = Tema.new(params[:tema])
    render :action => :new unless @tema.save
  end

  def update
    @tema = Tema.find(params[:id])
    render :action => :edit unless @tema.update_attributes(params[:tema])

  end

  def destroy
    @tema = Tema.find(params[:id])
    @tema.destroy
  end

end
