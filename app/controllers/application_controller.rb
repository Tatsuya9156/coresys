class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
  before_action :authenticate_worker!
end
