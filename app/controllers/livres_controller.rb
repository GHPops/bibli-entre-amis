class LivresController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_livre, only: [:show, :edit, :update, :destroy]

  def index
    @livres = Livre.all
    if params[:query].present?
      sql_query = "titre ILIKE :query OR auteur ILIKE :query"
      @livres = Livre.where(sql_query, query: "%#{params[:query]}%")
    else
      @livres = Livre.all
    end
    @livre = Livre.new
  end

  def new
    @livre = Livre.new
  end

  def show
    @reservations = @livre.reservations
    # récupérer les réservation
    # @reservations = Reservation.livre_id = @livre
    # reservations = Reservation.livre_id
    # reservations.find(@livre)
    @user = current_user
  end

  def create
    @livre = Livre.new(livre_params)
    @livre.user = current_user
    if @livre.save
      redirect_to livres_path, notice: "Livre ajouté à la base!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @livres = current_user.livres
  end

  def update
    @livre.update(livre_params)
    redirect_to livres_path, notice: "Livre modifié !"
  end

  def destroy
    @livre.destroy
    redirect_to livres_path, notice: "Livre supprimé"
  end

  private

  def set_livre
    @livre = Livre.find(params[:id])
  end

  def livre_params
    params.require(:livre).permit(:titre, :auteur, :note)
  end
end
