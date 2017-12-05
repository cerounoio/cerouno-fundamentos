class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_flash_types :success, :info, :warning, :danger
  before_action :clear_flash

  def clear_flash
    flash.clear
  end
end
