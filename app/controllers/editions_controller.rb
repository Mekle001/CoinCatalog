class EditionsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def new
    @coin = Coin.find(params[:coin_id])
    @edition = @coin.editions.new
    @edition.user = current_user
  end

  def create
    @coin = Coin.find(params[:edition][:coin_id])
    @edition = @coin.editions.create(edition_params)
    @edition.user = current_user

    if @edition.save
      redirect_to @edition.coin
    else
      render 'new'
    end
  end

  def index
    #@coin = Coin.find(params[:coin_id])
    @editions = Edition.all
  end

  def edit
    @edition = Edition.find(params[:id])
    @coin = @edition.coin
    params[:coin_id] = @coin.id
  end

  def update
    @edition = Edition.find(params[:id])

    if @edition.update(edition_params)
      redirect_to @edition.coin
    else
      render 'edit'
    end
  end

  def show
    @edition = Edition.find(params[:id])
  end

  def destroy
    @edition = Edition.find(params[:id])
    @coin = @edition.coin
    @edition.destroy

    redirect_to @coin
  end

  private
  def edition_params
    params.require(:edition).permit(:name, :description, :icon, :minted, :mintdate, :material_id, :finish_id)
  end

end

