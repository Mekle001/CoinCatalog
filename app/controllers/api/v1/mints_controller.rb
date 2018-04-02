class Api::V1::MintsController < Api::V1::BaseController
    skip_before_action :valid_user, only: [:index]

    def index
        respond_with Mint.all
    end

    def create
        respond_with :api, :v1, Mint.create(mint_params)
    end

    def destroy 
        respond_with Mint.destroy(params[:id])
    end

    def update 
        mint = Mint.find(id: params[:id])
        mint.update_attributes(mint_params)
        respond_with mint, json: mint
    end

    private 

    def mint_params
        params.require(:mint).permit(:name)
    end

end
