class HeadhuntersController < ApplicationController
  before_action :set_headhunter, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new]
  before_filter :verify_is_admin, only: [:new, :edit, :update, :destroy]

  def index
    @headhunters = Headhunter.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @headhunter = Headhunter.find(params[:id])
    @recruiters = @headhunter.recruiters.paginate(:page => params[:page], :per_page => 6)
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
      params.require(:headhunter).permit(:CompanyName, :CompanyDescription, :CompanyEmail, :CompanyWebsite, :CompanyLinkedin, :image, :CompanyUndergrad, :CompanyPreMBA, :CompanyPostMBA, :CompanyExecutive, :CompanyCandidateArea, :street1, :city1, :phone1, :street2, :city2, :phone2, :street3, :city3, :phone3)
    end

    def verify_is_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end
end
