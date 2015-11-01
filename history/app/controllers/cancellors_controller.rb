class CancellorsController < ApplicationController
  before_action :set_cancellor, only: [:show, :edit, :update, :destroy]

  # GET /cancellors
  # GET /cancellors.json
  def index
    @cancellors = Cancellor.all
  end

  # GET /cancellors/1
  # GET /cancellors/1.json
  def show
  end

  # GET /cancellors/new
  def new
    @cancellor = Cancellor.new
  end

  # GET /cancellors/1/edit
  def edit
  end

  # POST /cancellors
  # POST /cancellors.json
  def create
    @cancellor = Cancellor.new(cancellor_params)

    respond_to do |format|
      if @cancellor.save
        format.html { redirect_to @cancellor, notice: 'Cancellor was successfully created.' }
        format.json { render :show, status: :created, location: @cancellor }
      else
        format.html { render :new }
        format.json { render json: @cancellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancellors/1
  # PATCH/PUT /cancellors/1.json
  def update
    respond_to do |format|
      if @cancellor.update(cancellor_params)
        format.html { redirect_to @cancellor, notice: 'Cancellor was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancellor }
      else
        format.html { render :edit }
        format.json { render json: @cancellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancellors/1
  # DELETE /cancellors/1.json
  def destroy
    @cancellor.destroy
    respond_to do |format|
      format.html { redirect_to cancellors_url, notice: 'Cancellor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancellor
      @cancellor = Cancellor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancellor_params
      params.require(:cancellor).permit(:first_name, :last_name, :birthday)
    end
end
