class PprocessesController < ApplicationController
  before_action :set_pprocess, only: [:show, :edit, :update, :destroy]

  # GET /pprocesses
  # GET /pprocesses.json
  def index
    @pprocesses = Pprocess.all
  end

  # GET /pprocesses/1
  # GET /pprocesses/1.json
  def show
  end

  # GET /pprocesses/new
  def new
    @pprocess = Pprocess.new
  end

  # GET /pprocesses/1/edit
  def edit
  end

  # POST /pprocesses
  # POST /pprocesses.json
  def create
    @pprocess = Pprocess.new(pprocess_params)

    respond_to do |format|
      if @pprocess.save
        format.html { redirect_to @pprocess, notice: 'Pprocess was successfully created.' }
        format.json { render :show, status: :created, location: @pprocess }
      else
        format.html { render :new }
        format.json { render json: @pprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pprocesses/1
  # PATCH/PUT /pprocesses/1.json
  def update
    respond_to do |format|
      if @pprocess.update(pprocess_params)
        format.html { redirect_to @pprocess, notice: 'Pprocess was successfully updated.' }
        format.json { render :show, status: :ok, location: @pprocess }
      else
        format.html { render :edit }
        format.json { render json: @pprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pprocesses/1
  # DELETE /pprocesses/1.json
  def destroy
    @pprocess.destroy
    respond_to do |format|
      format.html { redirect_to pprocesses_url, notice: 'Pprocess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pprocess
      @pprocess = Pprocess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pprocess_params
      params.require(:pprocess).permit(:process, :customer_id)
    end
end
