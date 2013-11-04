class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def new
    render layout: false
  end

  def create
    Pond.create(params.require(:pond).permit(:name, :water_type))
    redirect_to ponds_path
  end

  def show
    @pond = Pond.find(params[:id])
    render layout: false
  end

  def edit
    @pond = Pond.find(params[:id])
    render layout: false
  end

  def update
    @pond = Pond.find(params[:id])
    @pond.update(params.require(:pond).permit(:name, :water_type))
    redirect_to ponds_path
  end

  def destroy
    Pond.find(params[:id]).destroy
    redirect_to ponds_path
  end



######## Tadpoles #######
#
# get '/tadpoles'  do
#    # Write the code to get all tadpoles 
#    # and send them to the index view listing all tadpoles.
#    @tadpoles = Tadpole.all
#    erb :"/tadpoles/index"
#  end
#
#  post '/tadpoles' do
#    # Write the code to create a new tadpole
#    # using the attributes included from the new form view.
#    # Also set the frog parent using the passed frog_id atribute.
#    # Then save and redirect to the index view listing all tadpoles.
#    Tadpole.create(:name => params[:name],
#                   :color => params[:color],
#                   :frog_id => params[:frog_id])
#    redirect "/tadpoles"
#  end
#
#  get '/tadpoles/:id' do
#    # Write the code to find the correct tadpole
#    # by id given in the url.
#    # Then send them to the show view.
#    @tadpole = Tadpole.find(params[:id])
#    erb :"tadpoles/show"
#  end
#
#  get '/tadpoles/:id/edit' do
#    # Write the code to find the correct tadpole
#    # by id given in the url.
#    # Then send them to edit form view.
#    @tadpole = Tadpole.find(params[:id])
#    erb :"tadpoles/edit"
#  end
#
#  post '/tadpoles/:id/update' do
#    # Write the code to find the correct tadpole
#    # and set it's attributes and save.
#    # Then redirect to the index view listing all tadpoles.
#    Tadpole.find(params[:id]).update(
#      :name => params[:name],
#      :color => params[:color],
#    )
#    redirect "/tadpoles"
#  end
#
#  get '/tadpoles/:id/destroy' do
#    # Write the code to find the correct tadpole
#    # and destroy it.
#    # Then redirect to the index view listing all tadpoles.
#    Tadpole.find(params[:id]).destroy
#    redirect "/tadpoles"
#  end
#
#  get '/tadpoles/:id/evolve' do
#    # Write the code to find the correct tadpole
#    # by id given in the url and store it temporarily.
#    # Create a new frog and pass the attributes of the 
#    # tadpole into the frog that it is becoming.
#    # Then save the new frog and destroy the old tadpole.
#    # Then redirect to the index view listing all tadpoles.
#    tadpole = Tadpole.find(params[:id])
#    Frog.create(
#      :name => tadpole.name,
#      :color => tadpole.color,
#      :pond_id => tadpole.frog.pond_id
#    )
#    tadpole.destroy
#    redirect "/tadpoles"
#  end

end
