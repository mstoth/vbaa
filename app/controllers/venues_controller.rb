
require 'dotenv-rails'
require 'geocodio/gem'
class VenuesController < ApplicationController
  before_action :set_venue, only: %i[ show edit update destroy ]

  # GET /venues or /venues.json
  def index
    @venues = Venue.all
    geocodio = Geocodio::Gem::new(Rails.application.credentials.dig(:geocodio, :vba))
    @venues.each do |v|
      if v.latitude == nil || v.longitude == nil
        results = geocodio.geocode([v.address])
        v.latitude = results["results"][0]["location"]["lat"]
        v.longitude = results["results"][0]["location"]["lng"]
      end
    end
  end

  # GET /venues/1 or /venues/1.json
  def show
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit
    puts "in venues controller edit"
  end

  # POST /venues or /venues.json
  def create
    @venue = Venue.new(venue_params)

    respond_to do |format|
      if @venue.save
        format.html { redirect_to @venue, notice: "Venue was successfully created." }
        format.json { render :show, status: :created, location: @venue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venues/1 or /venues/1.json
   def update
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: "Venue was successfully updated." }
        format.json { render :show, status: :ok, location: @venue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1 or /venues/1.json
  def destroy
    @venue.destroy!

    respond_to do |format|
      format.html { redirect_to venues_path, status: :see_other, notice: "Venue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
      if @venue.longitude.nil? or @venue.latitude.nil?
        geocodio = Geocodio::Gem::new(Rails.application.credentials.dig(:geocodio, :vba))
        @results = geocodio.geocode([@venue.address])
        if !@results.nil?
          @lat = @results["results"][0]["location"]["lat"]
          @lng = @results["results"][0]["location"]["lng"]
          @venue.latitude = @lat
          @venue.longitude = @lng
        end
      end
    end

    # Only allow a list of trusted parameters through.
    def venue_params
      params.require(:venue).permit(:name, :contact, :email, :address, :phone, :image, :latitude, :longitude)
    end
  end
