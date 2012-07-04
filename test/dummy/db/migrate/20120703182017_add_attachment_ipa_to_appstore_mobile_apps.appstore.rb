# This migration comes from appstore (originally 20120703181605)
class AddAttachmentIpaToAppstoreMobileApps < ActiveRecord::Migration
  def self.up
    add_column :appstore_mobile_apps, :ipa_file_name, :string
    add_column :appstore_mobile_apps, :ipa_content_type, :string
    add_column :appstore_mobile_apps, :ipa_file_size, :integer
    add_column :appstore_mobile_apps, :ipa_updated_at, :datetime
  end

  def self.down
    remove_column :appstore_mobile_apps, :ipa_file_name
    remove_column :appstore_mobile_apps, :ipa_content_type
    remove_column :appstore_mobile_apps, :ipa_file_size
    remove_column :appstore_mobile_apps, :ipa_updated_at
  end
end
