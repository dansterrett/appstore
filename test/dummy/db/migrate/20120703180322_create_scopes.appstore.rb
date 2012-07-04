# This migration comes from appstore (originally 20120619125824)
class CreateScopes < ActiveRecord::Migration
  def change
    create_table :alohomora_scopes do |t|
      t.string :name
      t.string :uri

      t.timestamps
    end
  end
end
