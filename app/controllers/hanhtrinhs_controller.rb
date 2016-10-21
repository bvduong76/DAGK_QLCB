class HanhtrinhsController < ApplicationController
  before_action :set_hanhtrinh, only: [:show, :edit, :update, :destroy]

  # GET /hanhtrinhs
  # GET /hanhtrinhs.json
  def index
    @hanhtrinhs = Hanhtrinh.all.order('sanbaydi ASC')
    respond_to do |format|

      format.html # show.html.erb
      format.json { render json: @hanhtrinhs }

    end
  end

  # GET /hanhtrinhs/1
  # GET /hanhtrinhs/1.json
  def show
    @hanhtrinh = Hanhtrinh.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hanhtrinh }
    end
  end

  # GET /hanhtrinhs/new
  def new
    @hanhtrinh = Hanhtrinh.new
  end

  # GET /hanhtrinhs/1/edit
  def edit
  end

  # POST /hanhtrinhs
  # POST /hanhtrinhs.json
  def create
    @hanhtrinh = Hanhtrinh.new(hanhtrinh_params)

    respond_to do |format|
      if @hanhtrinh.save
        format.html { redirect_to @hanhtrinh, notice: 'Hanhtrinh was successfully created.' }
        format.json { render :show, status: :created, location: @hanhtrinh }
      else
        format.html { render :new }
        format.json { render json: @hanhtrinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hanhtrinhs/1
  # PATCH/PUT /hanhtrinhs/1.json
  def update
    respond_to do |format|
      if @hanhtrinh.update(hanhtrinh_params)
        format.html { redirect_to @hanhtrinh, notice: 'Hanhtrinh was successfully updated.' }
        format.json { render :show, status: :ok, location: @hanhtrinh }
      else
        format.html { render :edit }
        format.json { render json: @hanhtrinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hanhtrinhs/1
  # DELETE /hanhtrinhs/1.json
  def destroy
    @hanhtrinh.destroy
    respond_to do |format|
      format.html { redirect_to hanhtrinhs_url, notice: 'Hanhtrinh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hanhtrinh
      @hanhtrinh = Hanhtrinh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hanhtrinh_params
      params.require(:hanhtrinh).permit(:sanbaydi, :sanbayden)
    end
end
