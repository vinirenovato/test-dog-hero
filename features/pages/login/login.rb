class LoginPage < SitePrism::Page

  element :enter_button, '.modal-body .btn.btn-primary'
  element :email, '[name=email]'
  element :password, '[name=password]'
  element :error_message, '.error-message'

  def do_login(email_user, password_user)
    email.set email_user
    password.set password_user
    enter_button.click
  end
end

