class ClownsController < ApplicationController
  def index
    @clowns = Clown.order(name: :asc)
  end

  def show
    @clown = Clown.find(params[:id])
  end

  def new
    @clown = Clown.new
    @partys = Party.all
  end

  def create
    # render json: Clown.create(clown_params)
    # redirect_to clowns_path
    newClown = Clown.create(clown_params)
    puts "NEW CLOWN", newClown.inspect
    redirect_to clowns_path
  end

  def edit
  end

  private

  def clown_params
    params.require(:clown).permit(:name, :costume, :age, :tricks, :party_ids => [])
  end
end
