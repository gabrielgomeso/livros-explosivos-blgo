class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[posts:index posts:show]
end
