class GrafitiesController < ApplicationController

  def new
    @grafiti = Grafiti.new
  end

  def mapa
    @d = ""
  end
  
  def create
    @grafity = Grafiti.new(grafiti_params)
    if @grafity.save
      redirect_to :action => "index"
    else
      render 'new'
    end
  end

  def show
    @grafiti = Grafiti.find(params[:id])
  end

  def index
    @grafities = Grafiti.all
  end
  
  def sig
     @grafities = Grafiti.all
  end

  private
    def grafiti_params
      params.require(:grafiti).permit(:title, :latitud, :longitud, :estrato, :seguridad,:educacion, :ruta)
    end
end
