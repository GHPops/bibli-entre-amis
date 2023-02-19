class ReservationsController < ApplicationController
  before_action :set_livre, only: %i[new create]
  before_action :set_reservation, only: %i[show edit update destroy]

  def index
    @past_reservations = Reservation.past.current_user
    @upcoming_reservations = Reservation.upcoming.current_user
    @current_reservations = Reservation.current.current_user
  end

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.livre = @livre
    @reservation.user = current_user
    if @reservation.save
      redirect_to livre_reservations_path, notice: "Livre réservé"
    else
      render :new, status: :unprocessable_entity, notice: "Réservation impossible"
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
    @reservation.destroy
    redirect_to reservation_path, notice: "Réservation annulée"
  end

  private

  def set_livre
    @livre = Livre.find(params[:livre_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:debut, :fin)
  end
end
