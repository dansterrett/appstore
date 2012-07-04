# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120703182018) do

  create_table "alohomora_clients", :force => true do |t|
    t.string   "uri"
    t.string   "name"
    t.integer  "created_from"
    t.string   "secret"
    t.string   "site_uri"
    t.string   "redirect_uri"
    t.string   "info"
    t.integer  "granted_times"
    t.integer  "revoked_times"
    t.date     "blocked"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "alohomora_oauth_accesses", :force => true do |t|
    t.string   "client_uri"
    t.string   "resource_owner_uri"
    t.date     "blocked"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "alohomora_oauth_authorizations", :force => true do |t|
    t.string   "client_uri"
    t.string   "resource_owner_uri"
    t.string   "code"
    t.time     "expired_at"
    t.date     "blocked"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "alohomora_oauth_daily_requests", :force => true do |t|
    t.time     "created_at", :null => false
    t.time     "time_id"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.integer  "times"
    t.datetime "updated_at", :null => false
  end

  create_table "alohomora_oauth_refresh_tokens", :force => true do |t|
    t.string   "refresh_token"
    t.string   "access_token"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "alohomora_oauth_tokens", :force => true do |t|
    t.string   "client_uri"
    t.string   "resource_owner_uri"
    t.string   "token"
    t.string   "refresh_token"
    t.date     "expire_at"
    t.date     "blocked"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "alohomora_organizations", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.boolean  "active"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "alohomora_organizations_users", :force => true do |t|
    t.integer "organization_id"
    t.integer "user_id"
  end

  add_index "alohomora_organizations_users", ["organization_id"], :name => "index_alohomora_organizations_users_on_organization_id"
  add_index "alohomora_organizations_users", ["user_id"], :name => "index_alohomora_organizations_users_on_user_id"

  create_table "alohomora_scopes", :force => true do |t|
    t.string   "name"
    t.string   "uri"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "appstore_mobile_apps", :force => true do |t|
    t.string   "name"
    t.integer  "organizationId"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "plist_file_name"
    t.string   "plist_content_type"
    t.integer  "plist_file_size"
    t.datetime "plist_updated_at"
    t.string   "ipa_file_name"
    t.string   "ipa_content_type"
    t.integer  "ipa_file_size"
    t.datetime "ipa_updated_at"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "uri"
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

end
