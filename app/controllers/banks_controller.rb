class BanksController < ApplicationController
  before_action :set_bank, only: [:show, :edit, :update, :destroy]


  def index
    @banks = apply_scopes(Bank.all.order(:name).paginate(:page => params[:page], :per_page => 24))
  end

  def show
  end

  def new
    @bank = Bank.new
  end

  def edit
  end

  def create
    @bank = Bank.new(bank_params)

    if @bank.save
      redirect_to @bank, notice: 'Bank was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @bank.update(bank_params)
      redirect_to @bank, notice: 'Bank was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @bank.destroy
    redirect_to banks_url
  end

  def offices
    @bank = Bank.find(params[:id])
    @offices = @bank.offices  
  end

  def groups
    @bank = Bank.find(params[:id])
    @groups = @bank.groups  
  end

  def schools
    @bank = Bank.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_params
      params.require(:bank).permit(:name, :shortname, :image, :description, :website, :email, :facebook, :twitter, :linkedin, :youtube, :size, :geography, :industries, :products, :founded, :internship, :diversity, :underclass, :charity, :revenue, :stock, :employees, :ceo, :headquarters)
    end
end
