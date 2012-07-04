# This migration comes from appstore (originally 20120619132558)
class CreateAlohomoraOauthTokens < ActiveRecord::Migration
  def change
    create_table :alohomora_oauth_tokens do |t|
      t.string :client_uri
      t.string :resource_owner_uri
      t.string :token
      t.string :refresh_token
      t.date :expire_at
      t.date :blocked

      t.timestamps
    end
  end
end
