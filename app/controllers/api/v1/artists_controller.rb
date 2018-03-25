class Api::V1::ArtistsController < Api::V1::BaseController
  before_action :valid_user, only: [:create, :update, :destroy]
  before_action :admin_user, only: [:create, :update, :destroy]

  def index
    respond_with Artist.all
  end

  def create
    respond_with :api, :v1, Artist.create(artist_params)
  end

  def destroy
    respond_with Artist.destroy(params[:id])
  end

  def update
    artist = Artist.find(params["id"])
    artist.update_attributes(artist_params)
    respond_with artist, json: artist
  end


  private
  def artist_params
    params.require(:artist).permit(:id, :name)
  end

  def valid_user
    unless logged_in?
      head 422
    end
  end

  def admin_user
    unless current_user.admin?
      head 422
    end
  end

end
