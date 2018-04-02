class Api::V1::EditionsController < Api::V1::BaseController
    skip_before_action :valid_user, only: [:index]
    skip_before_action :admin_user

    def index
        if params[:coin_id].present?
            @coin = Coin.find(params[:coin_id])
            respond_with @coin.editions
        else
            respond_with Edition.all
        end
        #respond_with Edition.find params.permit(:name, :minted, :mintdate, :coin_id, :material_id, :finish_id)
    end
    
    def create 
        respond_with :api, :v1, Edition.create(edition_params)
    end

    def destroy 
        respond_with Edition.destroy(params[:id])
    end

    def update 
        edition = Edition.find(id: params[:id])
        edition.update_attributes(edition_params)
        respond_with edition, json: edition
    end

    private

    def edition_params
        params.require(:edition).permit(:name, :description, :icon, :minted, :mintdate, :material_id, :finish_id)
    end

end