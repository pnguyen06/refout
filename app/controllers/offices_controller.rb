class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :edit, :update, :destroy]
  before_filter :verify_is_admin, only: [:new, :edit, :update, :destroy, :index, :show]


  def index
    Office.joins(:office, :bank).where("office.bank_id = bank.id")
    @offices = Office.all.order("updated_at DESC")
  end

  def show
    Office.joins(:office, :bank).where("office.bank_id = bank.id")
  end

  def new
    @office = Office.new
  end

  def edit
  end

  def create
    @office = Office.new(office_params)

    if @office.save
      redirect_to @office, notice: 'Office was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @office.update(office_params)
      redirect_to @office, notice: 'Office was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @office.destroy
    redirect_to officers_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = Office.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_params
      params.require(:office).permit(:name, :description, :bank_id, :street, :city, :phone)
    end

    def verify_is_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end
end
