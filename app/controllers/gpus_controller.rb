class GpusController < ApplicationController
  before_action :set_gpu, only: [:show, :update, :destroy]

  # GET /gpus
  def index
    @gpus = Gpu.all

    render json: @gpus
  end

  # GET /gpus/1
  def show
    render json: @gpu
  end

  # POST /gpus
  def create
    @gpu = Gpu.new(gpu_params)

    if @gpu.save
      render json: @gpu, status: :created, location: @gpu
    else
      render json: @gpu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gpus/1
  def update
    if @gpu.update(gpu_params)
      render json: @gpu
    else
      render json: @gpu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gpus/1
  def destroy
    @gpu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpu
      @gpu = Gpu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gpu_params
      params.fetch(:gpu, {})
    end
end
