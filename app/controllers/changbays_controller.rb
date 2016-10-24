class ChangbaysController < ApplicationController
  before_action :set_changbay, only: [:show, :edit, :update, :destroy]

  # GET /changbays
  # GET /changbays.json
  def index
    @changbays = Changbay.all.order('ma ASC')
    if @machangbay = params[:machangbay]
      @info =@changbays.where(id: @machangbay)
      render json: @info
    end
  end

  # GET /changbays/1
  # GET /changbays/1.json
  def show
  end

  # GET /changbays/new
  def new
    @changbay = Changbay.new
  end

  # GET /changbays/1/edit
  def edit
  end

  # POST /changbays
  # POST /changbays.json
  def create
    @changbay = Changbay.new(changbay_params)

    respond_to do |format|
      if @changbay.save
        format.html { redirect_to @changbay, notice: 'Changbay was successfully created.' }
        format.json { render :show, status: :created, location: @changbay }
      else
        format.html { render :new }
        format.json { render json: @changbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /changbays/1
  # PATCH/PUT /changbays/1.json
  def update
    respond_to do |format|
      if @changbay.update(changbay_params)
        format.html { redirect_to @changbay, notice: 'Changbay was successfully updated.' }
        format.json { render :show, status: :ok, location: @changbay }
      else
        format.html { render :edit }
        format.json { render json: @changbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /changbays/1
  # DELETE /changbays/1.json
  def destroy
    @changbay.destroy
    respond_to do |format|
      format.html { redirect_to changbays_url, notice: 'Changbay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def getsanbayden
    @tencbx = params[:noidi]
    @sbdi = Sanbay.all.where(tensanbay: @tencbx).first
    render json: @sbdi
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_changbay
    @changbay = Changbay.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def changbay_params
    params.require(:changbay).permit(:ma, :noidi, :noiden, :ngay, :gio)
  end
end
