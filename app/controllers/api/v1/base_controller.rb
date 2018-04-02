class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json
  before_action :valid_user, only: [:index, :create, :update, :destroy]
  before_action :admin_user, only: [:create, :update, :destroy]
  include SessionsHelper

  protected
  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      respond_with []
    end
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
