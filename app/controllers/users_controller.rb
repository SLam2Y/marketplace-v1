class UsersController < ApplicationController
  def update_by_email
  user = User.find_by(email: params[:email])

  unless user
    redirect_back fallback_location: root_path, alert: "Пользователь не найден"
    return
  end

  if user.update(update_params)
    redirect_to user, notice: "Данные обновлены"
  else
    redirect_back fallback_location: root_path, alert: "Ошибка обновления"
  end
end
private

def update_params
  params.permit(:role)
end
end
