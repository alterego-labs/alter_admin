# -*- encoding : utf-8 -*-
class Admin::HomeController < ActionController::Base
  layout "admin"

  before_action :authorize_admin

  helper_method :current_user

  def index; end

  private

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def authorize_admin
    redirect_to root_path, alert: "Вы не имеете прав для доступа к этой странице!" if cannot?(:access, :alter_admin)
  end
end
