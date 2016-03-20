class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    @reservation = Reservation.find(params[:id])
    render layout: false if request.xhr?
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    render layout: false if request.xhr?
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
    render layout: false if request.xhr?
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to reservations_url
    # respond_to do |format|
    #   if @reservation.save
    #     format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
    #     format.json { render :show, status: :created, location: @reservation }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @reservation.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    @reservation.update(reservation_params)
    redirect_to reservations_url
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    redirect_to reservations_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:email, :datetime, :message, :restaurant_name)
    end
end
