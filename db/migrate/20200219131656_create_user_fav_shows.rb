class CreateUserFavShows < ActiveRecord::Migration
  def change
    create_table :user_fav_shows do |t|
      t.references :show, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
