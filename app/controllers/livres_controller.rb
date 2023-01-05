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
    @livre = Livre.new(livre_params)
    if @livre.save
      redirect_to livres_path, notice: "Livre ajouté à la base!"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @livre
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_livre
    @livre = Livre.find(params[:id])
  end

  def livre_params
    params.require(:livre).permit(:titre, :auteur, :note)
  end

end
