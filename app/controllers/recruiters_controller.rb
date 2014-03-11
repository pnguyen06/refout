class RecruitersController < ApplicationController
  before_action :set_recruiter, only: [:show, :edit, :update, :destroy]
  before_filter :verify_is_admin, only: [:new, :edit, :update, :destroy]


  def index
    @recruiters = Recruiter.all.order("updated_at DESC")
  end

  def show
  end

  def new
    @recruiter = Recruiter.new
  end

  def edit
  end

  def create
    @recruiter = Recruiter.new(recruiter_params)

    if @recruiter.save
      redirect_to @recruiter, notice: 'Recruiter was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @recruiter.update(recruiter_params)
      redirect_to @recruiter, notice: 'Recruiter was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @recruiter.destroy
    redirect_to recruiters_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruiter
      @recruiter = Recruiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recruiter_params
      params.require(:recruiter).permit(:headhunter_id, :name, :title, :email, :linkedin, :description, :image)
    end

    def verify_is_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end
end
