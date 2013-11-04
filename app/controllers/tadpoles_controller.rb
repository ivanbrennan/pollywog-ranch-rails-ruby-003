class TadpolesController < ApplicationController

  def new
    @frog = Frog.find(params[:frog_id])
    render layout: false
  end

  def create
    Tadpole.create(params.require(:tadpole).permit(:name, :color, :frog_id))
    redirect_to tadpoles_path
  end

  def index
    @tadpoles = Tadpole.all
  end

  def show
    @tadpole = Tadpole.find(params[:id])
    render layout: false
  end

  def edit
    @tadpole = Tadpole.find(params[:id])
    render layout: false
  end

  def update
    @tadpole = Tadpole.find(params[:id])
    @tadpole.update(params.require(:tadpole).permit(:name, :color))
    redirect_to tadpoles_path
  end

  def destroy
    Tadpole.find(params[:id]).destroy
    redirect_to tadpoles_path
  end

  def evolve
    @tadpole = Tadpole.find(params[:id])
    Frog.create(
      :name => @tadpole.name,
      :color => @tadpole.color,
      :pond_id => @tadpole.frog.pond_id
    )
    @tadpole.destroy
    redirect_to tadpoles_path
  end

end
