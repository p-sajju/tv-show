class ShowMailer < ApplicationMailer

  def send_show_mail(fav_show_id, user_id)
    @show = Show.find(fav_show_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: 'Your fav show is about to begin in 30 min!')
  end
end
