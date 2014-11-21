class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  def index
    @tips = Tip.all.order("upvote DESC")
  end

  def show
  end

  def new
    @tip = Tip.new
  end

  def edit
  end

  def create
    @tip = Tip.new(tip_params)
    if @tip.save
      redirect_to @tip, notice: 'Tip was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @tip.update(tip_params)
      redirect_to @tip, notice: 'Tip was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @tip.destroy
    redirect_to tips_url
  end

  def addupvote
    @tip = Tip.find(params[:id])
    @tip.upvote += 1
    @tip.save!
    redirect_to request.referrer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_params
      params.require(:tip).permit(:description, :title, :upvote)
    end
end
