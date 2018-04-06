require 'active_support/core_ext'
class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json
  before_action :valid_user, only: [:index, :create, :update, :destroy]
  before_action :check_role
  class_attribute :perms
  include SessionsHelper

  self.perms = { "create" => ["ALKP"], "update" => ["ELKP"], "destroy" => ["DLKP"] }

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

  def check_role
    return if !perms[action_name].present?
    return if perms[action_name].count == 0
    perms[action_name].each do |required_privilege|
      return if has_privilege? required_privilege
    end
    head 422
  end

end
