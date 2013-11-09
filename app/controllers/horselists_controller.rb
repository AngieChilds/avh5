class HorselistsController < ApplicationController
  before_action :set_horselist, only: [:show, :edit, :update, :destroy]

  # GET /horselists
  # GET /horselists.json
  def index
    @horselist = @request.horselists.all
  end

  # GET /horselists/1
  # GET /horselists/1.json
  def show
  end

  # GET /horselists/new
  def new
    @horselist = Horselist.new
  end

  # GET /horselists/1/edit
  def edit
  end

  # POST /horselists
  # POST /horselists.json
  def create
    @horselist = @request.horselists.create(horselist_params)

    respond_to do |format|
      if @request.horselist.save
        format.html { redirect_to request_path(@request), notice: 'Horselist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @request.horselist }
      else
        format.html { render action: 'new' }
        format.json { render json: @request.horselist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horselists/1
  # PATCH/PUT /horselists/1.json
  def update
    respond_to do |format|
      if @horselist.update(horselist_params)
        format.html { redirect_to @horselist, notice: 'Horselist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @horselist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horselists/1
  # DELETE /horselists/1.json
  def destroy
    @horselist.destroy
    respond_to do |format|
      format.html { redirect_to requests_path(@request) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horselist
      @horselist = Request.find(params[:request_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horselist_params
      @horselist = @request.horselists.require(params[:horselist].permit(:player, :horse, :currant_level, :date, :note, ranges_attributes: [:id, :level, :level_range] ))

    
end
end



