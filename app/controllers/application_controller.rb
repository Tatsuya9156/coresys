class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  # ログアウト状態でアクセスするとログインページへ遷移する
  def authenticate_user!
    if employee_signed_in? || worker_signed_in?
      true
    else
      authenticate_employee!
    end
  end
end
