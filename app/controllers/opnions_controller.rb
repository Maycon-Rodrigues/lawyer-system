class OpnionsController < ApplicationController
  before_action :set_opnion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /opnions
  # GET /opnions.json
  def index
    @opnions = Opnion.all
  end

  # GET /opnions/1
  # GET /opnions/1.json
  def show
  end

  # GET /opnions/new
  def new
    @opnion = Opnion.new
  end

  # GET /opnions/1/edit
  def edit
  end

  # POST /opnions
  # POST /opnions.json
  def create
    @opnion = Opnion.new(opnion_params)

    respond_to do |format|
      if @opnion.save
        format.html { redirect_to @opnion, notice: 'Opnion was successfully created.' }
        format.json { render :show, status: :created, location: @opnion }
      else
        format.html { render :new }
        format.json { render json: @opnion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opnions/1
  # PATCH/PUT /opnions/1.json
  def update
    respond_to do |format|
      if @opnion.update(opnion_params)
        format.html { redirect_to @opnion, notice: 'Opnion was successfully updated.' }
        format.json { render :show, status: :ok, location: @opnion }
      else
        format.html { render :edit }
        format.json { render json: @opnion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opnions/1
  # DELETE /opnions/1.json
  def destroy
    @opnion.destroy
    respond_to do |format|
      format.html { redirect_to opnions_url, notice: 'Opnion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opnion
      @opnion = Opnion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opnion_params
      params.require(:opnion).permit(:opnion, :customer_id, :user_id, :pprocess_id)
    end
end
