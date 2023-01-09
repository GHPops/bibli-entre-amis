class ReservationsController < ApplicationController
  before_action :set_livre, only: [:new, :create, :edit, :update, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.livre = @livre
    @reservation.user = current_user
    if @reservation.save
      redirect_to livre_path(livre), notice: "Livre réservé"
    else
      redirect_to livre_path(livre), notice: "Echec de la réservation"
    end
  end

  def edit
    @reservations = current_user.reservations
  end

  def update
    @reservation.update(reservation_params)
    redirect_to livres_path, notice: "Réservation modifiée !"
  end

  def destroy
  end

  private

  def set_livre
    @livre = Livre.find(params[:livre_id])
  end

  def reservation_params
    params.require(:reservation).permit(:debut, :fin)
  end
end
