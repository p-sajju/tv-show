namespace :notify_user do
  desc "Notify user's fav show time"
  task :show_time => :environment do
    Show.where(start_at: (Time.zone.now + 30*60)).each do |show|
      show.user_fav_shows.each do |fav_show|
        user_id = fav_show.user_id
        ShowMailer.send_show_mail(show.id, user_id)  
      end
    end
  end
end