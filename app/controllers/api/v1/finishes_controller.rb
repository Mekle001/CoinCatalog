class Api::V1::FinishesController < Api::V1::BaseController
    skip_before_action :valid_user, only: [:index]

    def index
        respond_with Finish.all
    end

    def create
        respond_with :api, :v1, Finish.create(finish_params)
    end

    def destroy 
        respond_with Finish.destroy(params[:id])
    end

    def update 
        finish = Finish.find(id: params[:id])
        finish.update_attributes(finish_params)
        respond_with finish, json: finish
    end

    private 

    def finish_params
        params.require(:finish).permit(:name)
    end
    

end
