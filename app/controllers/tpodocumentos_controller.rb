class TpodocumentosController < ApplicationController
  before_filter :require_login
  def index
    @tpodocumentos = Tpodocumento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tpodocumentos }
    end
  end

  def show
    @tpodocumento = Tpodocumento.find(params[:id])
  end

  def new
    @tpodocumento = Tpodocumento.new
  end

  def edit
    @tpodocumento = Tpodocumento.find(params[:id])
  end

  def create
    @tpodocumento = Tpodocumento.new(params[:tpodocumento])
    render :action => :new unless @tpodocumento.save
    @tpodocumento = Tpodocumento.all
  end

  def update
    @tpodocumento = Tpodocumento.find(params[:id])
    render :action => :edit unless @tpodocumento.update_attributes(params[:tpodocumento])
  end

  def destroy
    @tpodocumento = Tpodocumento.find(params[:id])
    @tpodocumento.destroy
  end
end
