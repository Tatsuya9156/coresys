class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def worker_params
    params.require(:worker).permit(:worker_number, :name, :name_kana, :trade_name, :phone, :email, :password, :address_zip,
                                   :address, :warehouse_zip, :warehouse, :warehouse_info, :inaba, :yodo, :takubo, :ykkap, :sankyo, :lixil)
  end
end
