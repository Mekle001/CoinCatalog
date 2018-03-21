class MyCoinsController < ApplicationController

  def index
    #Needs to be updated to be by "user"
    @my_coins = MyCoin.all
  end

  def new
    @my_coin = MyCoin.new
  end

  def create
    @my_coin = MyCoin.new(coin_params)

    if @my_coin.save
      redirect_to @my_coin
    else
      render 'new'
    end
  end

  def edit
    @coin = Coin.find(params[:id])
  end

  def update

  end

  def show

  end

  def destroy

  end

  private

  def my_coin_params
    params.require(:my_coin).permit(:name)
  end
end
