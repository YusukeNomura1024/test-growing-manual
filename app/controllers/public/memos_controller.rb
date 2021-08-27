class Public::MemosController < ApplicationController
  def index
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memo_path(@memo)
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :description, :code).merge(user_id: current_user.id)
  end
end
