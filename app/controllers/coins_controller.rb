class CoinsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]

  def new
    @coin = current_user.coins.new
  end

  def create
    @coin = current_user.coins.new(coin_params)

    if @coin.save
      redirect_to @coin
    else
      render 'new'
    end
  end

  def index
    @coins = Coin.paginate(page: params[:page])
  end

  def edit
    @coin = Coin.find(params[:id])
  end

  def update
    @coin = Coin.find(params[:id])
    if @coin.update(coin_params)
      redirect_to @coin
    else
      render 'edit'
    end
  end

  def show
    @coin = Coin.find(params[:id])
  end

  def destroy
    @coin = Coin.find(params[:id])
    @coin.destroy

    redirect_to coins_path
  end

  private

  def coin_params
    params.require(:coin).permit(:name,:description, :size, :thickness, :mint_id, :artist_id, :unitsize_id, :unitthickness_id)
  end

end

