class BanksController < ApplicationController
  before_action :set_bank, only: [:show, :edit, :update, :destroy]


  def index
    @banks = Bank.all
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_params
      params.require(:bank).permit(:name, :image, :description, :website, :email, :facebook, :twitter, :linkedin, :youtube, :size, :geography, :industries, :products, :founded, :internship, :diversity, :underclass, :charity)
    end
end
