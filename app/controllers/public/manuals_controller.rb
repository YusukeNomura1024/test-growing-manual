class Public::ManualsController < ApplicationController

  def new
    @manual = Manual.new
    @categories = Category.where(user_id: current_user)
  end

  def index
    @manuals = Manual.all
  end

  def show
    @manual = Manual.find(params[:id])
    @procedures = Procedure.where(manual_id: @manual.id).order(:position)
  end

  def edit
  end

  def update
  end

  def create
    manual = Manual.new(manual_params)
    manual.user_id = current_user.id
    manual.save
    flash[:notice] = '登録しました'
    redirect_to manual_path(manual)
  end

  def destroy
  end

  private

  def manual_params
    params.require(:manual).permit(:title, :description, :category_id, :image_id, :is_active)
  end
end
