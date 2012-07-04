class AddAttachmentIconToAppstoreMobileApps < ActiveRecord::Migration
  def self.up
    add_column :appstore_mobile_apps, :icon_file_name, :string
    add_column :appstore_mobile_apps, :icon_content_type, :string
    add_column :appstore_mobile_apps, :icon_file_size, :integer
    add_column :appstore_mobile_apps, :icon_updated_at, :datetime
  end

  def self.down
    remove_column :appstore_mobile_apps, :icon_file_name
    remove_column :appstore_mobile_apps, :icon_content_type
    remove_column :appstore_mobile_apps, :icon_file_size
    remove_column :appstore_mobile_apps, :icon_updated_at
  end
end
