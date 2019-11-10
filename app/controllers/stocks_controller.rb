class StocksController < ApplicationController
  def index
    @stocks = Stock.all.order(:name)
  end

  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
    redirect_to root_path
  end

  def edit
    stock
  end

  def update
    stock.update(stock_params)
    redirect_to root_path
  end

  def destroy
    stock.destroy
    redirect_to root_path
  end

  private

  def stock_params
    params.require(:stock).permit(:number, :name, :phone)
  end

  def stock
    @stock ||= Stock.find(params[:id])
  end
end
