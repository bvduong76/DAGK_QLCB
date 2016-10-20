class SanbaysController < ApplicationController
  def index
    @sanbays = Sanbay.all
    render json: @sanbays
  end
  def new
    @sanbay = Sanbay.new
  end
  def show
    @sanbay = Sanbay.find(params[:id])
    render json: @sanbay
  end
  def create
    @sanbay = Sanbay.new(params_sanbay)
    if @sanbay.save
      redirect_to @sanbay
    else
      render 'new'
    end

  end
  def follow(sbdi, sbden)
    active_relationships.create(followed_id: other_user.id)
  end
  def update
    @sanbay = Sanbay.find(param[:id])
    @sanbay.update(params[:sanbay].permit(:masanbay, :tensanbay))
  end
  def destroy
    @sanbay = Sanbay.find(param[:id])
    @sanbay.destroy
  end
  private
  def params_sanbay
    params.require(:sanbay).permit(:masanbay, :tensanbay)
  end
end
