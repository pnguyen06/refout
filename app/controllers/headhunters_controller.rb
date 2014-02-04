class HeadhuntersController < ApplicationController
  before_action :set_headhunter, only: [:show, :edit, :update, :destroy]

  def index
    @headhunters = Headhunter.all
  end

  def show
  end

  def new
    @headhunter = Headhunter.new
  end

  def edit
  end

  def create
    @headhunter = Headhunter.new(headhunter_params)

    if @headhunter.save
      redirect_to @headhunter, notice: 'Headhunter was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @headhunter.update(headhunter_params)
      redirect_to @headhunter, notice: 'Headhunter was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @headhunter.destroy
    redirect_to headhunters_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headhunter
      @headhunter = Headhunter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headhunter_params
      params.require(:headhunter).permit(:CompanyName, :CompanyDescription, :CompanyEmail)
    end
end
