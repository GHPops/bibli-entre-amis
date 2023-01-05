class LivresController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
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
    @livres = current_user.livres
  end

  def update
    @livre.update(livre_params)
    redirect_to livres_path, notice: "Livre modifié !"
  end

  def destroy
  end

  private

  def set_livre
    @livre = Livre.find(params[:id])
  end

  def livre_params
    params.require(:livre).permit(:titre, :auteur, :note, :user)
  end

end
