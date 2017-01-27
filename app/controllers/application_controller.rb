class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    url = request.base_url

  end
end
