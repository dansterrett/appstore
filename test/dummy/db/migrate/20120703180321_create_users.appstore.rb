# This migration comes from appstore (originally 20120619123937)
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uri
      t.string :email
      t.string :name
      t.string :password_digest
      t.boolean :admin
      t.timestamps
    end
  end
end
