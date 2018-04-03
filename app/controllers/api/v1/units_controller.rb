class Api::V1::UnitsController < Api::V1::BaseController
    skip_before_action :valid_user, only: [:index]

    def index
        respond_with Unit.all
    end

    def create
        respond_with :api, :v1, Unit.create(unit_params)
    end

    def destroy 
        respond_with Unit.destroy(params[:id])
    end

    def update 
        unit = Unit.find(id: params[:id])
        unit.update_attributes(unit_params)
        respond_with unit, json: unit
    end

    private 

    def unit_params
        params.require(:unit).permit(:name)
    end

end
