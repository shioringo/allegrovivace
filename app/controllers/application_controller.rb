class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :set_console, if: :development?

  private

  def production?
    Rails.env.production?
  end

  def development?
    Rails.env.development?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def set_console
    if params[:console].present?
      console
    end
  end

end
