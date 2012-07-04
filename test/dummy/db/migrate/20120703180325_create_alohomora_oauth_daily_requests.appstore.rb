# This migration comes from appstore (originally 20120619131709)
class CreateAlohomoraOauthDailyRequests < ActiveRecord::Migration
  def change
    create_table :alohomora_oauth_daily_requests do |t|
      t.time :created_at
      t.time :time_id
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :times

      t.timestamps
    end
  end
end
