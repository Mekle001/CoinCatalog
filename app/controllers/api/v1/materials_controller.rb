class Api::V1::MaterialsController < Api::V1::BaseController
    skip_before_action :valid_user, only: [:index]

    def index
        respond_with Material.all
    end

    def create
        respond_with :api, :v1, Material.create(material_params)
    end

    def destroy 
        respond_with Material.destroy(params[:id])
    end

    def update 
        material = Material.find(id: params[:id])
        material.update_attributes(material_params)
        respond_with material, json: material
    end

    private 

    def material_params
        params.require(:material).permit(:name)
    end

end
