class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_filter :verify_is_admin, only: [:new, :edit, :update, :destroy, :index, :show]


  def index
    Group.joins(:group, :bank).where("group.bank_id = bank.id")
    @groups = Group.all.order("updated_at DESC")
  end

  def show
    Group.joins(:group, :bank).where("group.bank_id = bank.id")
    @group = Group.find(params[:id])
    @bank = Bank.find(@group.bank_id)
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :description, :bank_id, :image)
    end

    def verify_is_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end
end
