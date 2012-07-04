# This migration comes from appstore (originally 20120619132331)
class CreateAlohomoraOauthRefreshTokens < ActiveRecord::Migration
  def change
    create_table :alohomora_oauth_refresh_tokens do |t|
      t.string :refresh_token
      t.string :access_token

      t.timestamps
    end
  end
end
