# This migration comes from appstore (originally 20120619130943)
class CreateAlohomoraOauthAccesses < ActiveRecord::Migration
  def change
    create_table :alohomora_oauth_accesses do |t|
      t.string :client_uri
      t.string :resource_owner_uri
      t.date :blocked

      t.timestamps
    end
  end
end
