class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def webgoal
    @user = User.from_omniauth(request.env["omniauth.auth"])

    byebug
    1==1

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", kind: "Webgoal"
      sign_in_and_redirect @user, event: :authentication

    else
      session["devise.webgoal_data"] = request.env["omniauth.auth"].except(:extra)
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")

    end
  end

  def failure
    byebug
    2==2

    redirect_to root_path
  end
end
