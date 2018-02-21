class MeteoStationsController < ApplicationController
  before_action :set_meteo_station, only: [:show, :edit, :update, :destroy]

  # GET /meteo_stations
  # GET /meteo_stations.json
  def index
    @meteo_stations = MeteoStation.all
  end

  # GET /meteo_stations/1
  # GET /meteo_stations/1.json
  def show
  end

  # GET /meteo_stations/new
  def new
    @meteo_station = MeteoStation.new
  end

  # GET /meteo_stations/1/edit
  def edit
  end

  # POST /meteo_stations
  # POST /meteo_stations.json
  def create
    @meteo_station = MeteoStation.new(meteo_station_params)

    respond_to do |format|
      if @meteo_station.save
        format.html { redirect_to @meteo_station, notice: 'Meteo station was successfully created.' }
        format.json { render :show, status: :created, location: @meteo_station }
      else
        format.html { render :new }
        format.json { render json: @meteo_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meteo_stations/1
  # PATCH/PUT /meteo_stations/1.json
  def update
    respond_to do |format|
      if @meteo_station.update(meteo_station_params)
        format.html { redirect_to @meteo_station, notice: 'Meteo station was successfully updated.' }
        format.json { render :show, status: :ok, location: @meteo_station }
      else
        format.html { render :edit }
        format.json { render json: @meteo_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meteo_stations/1
  # DELETE /meteo_stations/1.json
  def destroy
    @meteo_station.destroy
    respond_to do |format|
      format.html { redirect_to meteo_stations_url, notice: 'Meteo station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meteo_station
      @meteo_station = MeteoStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meteo_station_params
      params.fetch(:meteo_station, {})
    end
end
