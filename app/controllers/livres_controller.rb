class LivresController < ApplicationController
  before_action :set_livre, only: [:show, :edit, :update, :destroy]

  def index
    @livres = Livre.all
  end

  def new
    @livre = Livre.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_livre
    @livre = Livre.find(params[:livre_id])
  end

  def livre_params
    params.require(:livre).permit(:starting_date, :end_date)
  end

end
