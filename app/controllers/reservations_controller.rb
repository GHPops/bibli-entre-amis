class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to livres_path, notice: "Livre réservé"
    else
      render :new, status: :unprocessable_entity
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

  def set_reservation
    @reservation = reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:debut, :fin)
  end
end
