class FrogsController < ApplicationController

  def index
    @frogs = Frog.all
  end

  def new
    render layout: false
  end

  def create
    Frog.create(params.require(:frog).permit(:name, :color, :pond_id))
    redirect_to frogs_path
  end

  def show
    @frog = Frog.find(params[:id])
    render layout: false
  end

  def edit
    @frog = Frog.find(params[:id])
    render layout: false
  end

  def update
    @frog = Frog.find(params[:id])
    @frog.update(params.require(:frog).permit(:name, :color, :pond_id))
    redirect_to frogs_path
  end

  def destroy
    Frog.find(params[:id]).destroy
    redirect_to frogs_path
  end

end
