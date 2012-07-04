# This migration comes from appstore (originally 20120621114335)
class CreateAlohomoraOrganizationsUsers < ActiveRecord::Migration
  def change
    create_table :alohomora_organizations_users do |t|
      t.integer :organization_id
      t.integer :user_id
    end
    
    add_index :alohomora_organizations_users, :organization_id
    add_index :alohomora_organizations_users, :user_id
  end
end
