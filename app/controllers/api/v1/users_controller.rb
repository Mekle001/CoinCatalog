class Api::V1::UsersController < Api::V1::BaseController

    superclass.perms = {"create" => ["AUSR"], "update" => ["EUSR"], "destroy" => ["DUSR"] }

    def index
        respond_with User.all
    end

    def create
        respond_with :api, :v1, User.create(user_params)
    end

    def destroy 
        respond_with User.destroy(params[:id])
    end

    def update 
        user = User.find(id: params[:id])
        user.update_attributes(user_params)
        respond_with user, json: user
    end

    private 

    def user_params
        params.require(:user).permit(:name)
    end
   
end