class SanbaysController < ApplicationController
  before_action :set_sanbay, only: [:show, :edit, :update, :destroy]

  # GET /sanbays
  # GET /sanbays.json
  def index
    @sanbays = Sanbay.all
    respond_to do |format|

      format.html # show.html.erb
      format.json { render json: @sanbays }

    end
  end
  # GET /sanbays/1
  # GET /sanbays/1.json
  def show
    @sanbay = Sanbay.find(params[:id])
    respond_to do |format|

      format.html # show.html.erb
      format.json { render json: @sanbay }

    end
  end

  # GET /sanbays/new
  def new
    @sanbay = Sanbay.new
  end

  # GET /sanbays/1/edit
  def edit
  end

  # POST /sanbays
  # POST /sanbays.json
  def create
    @sanbay = Sanbay.new(sanbay_params)

    respond_to do |format|
      if @sanbay.save
        format.html { redirect_to @sanbay, notice: 'Sanbay was successfully created.' }
        format.json { render :show, status: :created, location: @sanbay }
      else
        format.html { render :new }
        format.json { render json: @sanbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sanbays/1
  # PATCH/PUT /sanbays/1.json
  def update
    respond_to do |format|
      if @sanbay.update(sanbay_params)
        format.html { redirect_to @sanbay, notice: 'Sanbay was successfully updated.' }
        format.json { render :show, status: :ok, location: @sanbay }
      else
        format.html { render :edit }
        format.json { render json: @sanbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanbays/1
  # DELETE /sanbays/1.json
  def destroy
    @sanbay.destroy
    respond_to do |format|
      format.html { redirect_to sanbays_url, notice: 'Sanbay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanbay
      @sanbay = Sanbay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sanbay_params
      params.require(:sanbay).permit(:masanbay, :tensanbay)
    end
end
