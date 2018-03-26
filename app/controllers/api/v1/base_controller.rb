class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json
  include SessionsHelper

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      respond_with []
    end
  end

end
