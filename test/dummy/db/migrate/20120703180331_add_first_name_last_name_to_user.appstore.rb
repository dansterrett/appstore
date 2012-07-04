# This migration comes from appstore (originally 20120703155743)
class AddFirstNameLastNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
