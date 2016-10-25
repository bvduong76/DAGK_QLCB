class ChuyenbaysController < ApplicationController
  before_action :set_chuyenbay, only: [:show, :edit, :update, :destroy]

  # GET /chuyenbays
  # GET /chuyenbays.json
  def index
    @chuyenbays = Chuyenbay.all.order('machangbay ASC')

    if @sbdi = params[:di] and @sbden = params[:den] and @ngaydi = params[:ngaydi]

      @noidiObj = Sanbay.all.where(tensanbay: @sbdi).first
      @noidenObj = Sanbay.all.where(tensanbay: @sbden).first
      @temps = Changbay.where(noidi: @noidiObj, noiden: @noidenObj, ngay: @ngaydi)
      render json: @temps
    elsif @macb = params[:changbayid]
      render json: Chuyenbay.where(machangbay: @macb)
    elsif @macb = params[:changbay] and @gia = params[:gia]
      render json: Chuyenbay.where(machangbay: @macb , giaban: @gia)
    end
  end

  # GET /chuyenbays/1
  # GET /chuyenbays/1.json
  def show
  end

  # GET /chuyenbays/new
  def new
    @chuyenbay = Chuyenbay.new
  end

  # GET /chuyenbays/1/edit
  def edit
  end

  # POST /chuyenbays
  # POST /chuyenbays.json
  def create
    @chuyenbay = Chuyenbay.new(chuyenbay_params)

    respond_to do |format|
      if @chuyenbay.save
        format.html { redirect_to @chuyenbay, notice: 'Chuyenbay was successfully created.' }
        format.json { render :show, status: :created, location: @chuyenbay }
      else
        format.html { render :new }
        format.json { render json: @chuyenbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuyenbays/1
  # PATCH/PUT /chuyenbays/1.json
  def update
    respond_to do |format|
      if @chuyenbay.update(chuyenbay_params)
        format.html { redirect_to @chuyenbay, notice: 'Chuyenbay was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuyenbay }
      else
        format.html { render :edit }
        format.json { render json: @chuyenbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuyenbays/1
  # DELETE /chuyenbays/1.json
  def destroy
    @chuyenbay.destroy
    respond_to do |format|
      format.html { redirect_to chuyenbays_url, notice: 'Chuyenbay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_chuyenbay
    @chuyenbay = Chuyenbay.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def chuyenbay_params
    params.require(:chuyenbay).permit(:machangbay, :giaban, :soluong)
  end
end
