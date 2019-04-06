class UserMailer < ApplicationMailer
	default from: 'vk2853@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users'
    p @user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
