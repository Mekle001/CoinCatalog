require 'active_support/core_ext'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_role
  class_attribute :perms
  include SessionsHelper

  self.perms = { "dummy" => ["ALKP"], "dummy2" => ["ELKP"] }

  protected

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def check_role
    return if !perms[action_name].present?
    return if perms[action_name].count == 0
    perms[action_name].each do |required_privilege|
      return if has_privilege? required_privilege
    end
    store_location
    flash[:danger] = "Please log in."
    redirect_to login_url
end

end
