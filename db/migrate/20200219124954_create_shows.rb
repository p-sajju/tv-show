class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.references :channel, index: true
      t.timestamps null: false
    end
  end
end
