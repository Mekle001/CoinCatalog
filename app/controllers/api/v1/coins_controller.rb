class Api::V1::CoinsController < Api::V1::BaseController
    before_action :valid_user, only: [:create, :update, :destroy]
    
    def index
        respond_with Coin.all
    end

    def create
        respond_with :api, :v1, Coin.create(coin_params)
    end

    def destroy 
        respond_with Coin.destroy(params[:id])
    end

    def update 
        coin = Coin.find(id: params[:id])
        coin.update_attributes(coin_params)
        respond_with coin, json: coin
    end

    private 

    def coin_params
        params.require(:coin).permit(:name,:description, :size, :thickness, :mint_id, :artist_id, :unitsize_id, :unitthickness_id)
    end
end
  