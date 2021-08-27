class Public::ProceduresController < ApplicationController
  def create
    procedure = Procedure.new(procedure_params)
    unless procedure.position.nil?
      procedure.insert_at(procedure.position)
    end

    procedure.save
    redirect_to manual_path(params[:manual_id])
  end


  def index
    @manual = Manual.find(params[:manual_id])
    @procedures = Procedure.where(manual_id: params[:manual_id]).order(:position)
    @memos = Memo.where(user_id: current_user.id)
  end

  private

  def procedure_params
    params.require(:procedure).permit(:title, :position).merge(manual_id: params[:manual_id])
  end
end
