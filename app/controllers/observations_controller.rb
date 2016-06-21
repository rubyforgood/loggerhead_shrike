class ObservationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_observation, only: [:show, :edit, :update, :destroy]
  # GET /observations
  # GET /observations.json
  def index
    @observations = Observation.all
    gmaps_hash
  end

  # GET /observations/1
  # GET /observations/1.json
  def show
    @observation = Observation.find(params[:id])
    @observations = @observation
    gmaps_hash
  end

  # GET /observations/new
  def new
    @observation = Observation.new
  end

  # GET /observations/1/edit
  def edit
    @observation = Observation.find(params[:id])
    @observations = @observation
    gmaps_hash
  end

  # POST /observations
  # POST /observations.json
  def create
    @observation = Observation.new(observation_params)

    respond_to do |format|
      if @observation.save
        format.html { redirect_to @observation, notice: 'Observation was successfully created.' }
        format.json { render :show, status: :created, location: @observation }
      else
        format.html { render :new }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observations/1
  # PATCH/PUT /observations/1.json
  def update
    respond_to do |format|
      if @observation.update(observation_params)
        format.html { redirect_to @observation, notice: 'Observation was successfully updated.' }
        format.json { render :show, status: :ok, location: @observation }
      else
        format.html { render :edit }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observations/1
  # DELETE /observations/1.json
  def destroy
    @observation.destroy
    respond_to do |format|
      format.html { redirect_to observations_url, notice: 'Observation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def gmaps_hash
    @hash = Gmaps4rails.build_markers(@observations) do |observation, marker|
        marker.lat observation.latitude
        marker.lng observation.longitude
        marker.infowindow observation.location
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation
      @observation = Observation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observation_params
      params.require(:observation).permit(:sighted_at, :location, :latitude, :longitude, :num_bands, :photo)
    end
end
