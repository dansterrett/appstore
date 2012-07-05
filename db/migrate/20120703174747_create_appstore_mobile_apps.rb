class CreateAppstoreMobileApps < ActiveRecord::Migration
  def self.up
    create_table :appstore_mobile_apps do |t|
      t.string :name
      t.integer :organization_id
      t.timestamps
    end
    
    add_index :appstore_mobile_apps, :organization_id
  end

  def self.down
    drop_table :appstore_mobile_apps
  end
end
