class ApplicationController < ActionController::Base
  include Pundit

  # 捕获没有授权的异常
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  # 针对这个异常做出具体的处理
  def user_not_authorized
    flash[:danger] = "您没有访问权限"
    redirect_to '/'
  end
end
