# This migration comes from appstore (originally 20120703174747)
class CreateAppstoreMobileApps < ActiveRecord::Migration
  def self.up
    create_table :appstore_mobile_apps do |t|
      t.string :name
      t.integer :organization_id
      t.timestamps
    end
  end

  def self.down
    drop_table :appstore_mobile_apps
  end
end
