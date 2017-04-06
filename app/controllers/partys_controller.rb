class PartysController < ApplicationController
  def index
    @partys = Party.order(created_at: :desc)
  end

  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
    Party.create(party_params)
    redirect_to partys_path
  end

  def edit
  end

  private

  def party_params
    params.require(:party).permit(:name, :location, :date, :clown_ids => [])
  end
end
