module Appstore
  class MobileApp < ActiveRecord::Base
    has_attached_file :plist, 
                      :url => "/assets/appstore/mobile_app/plists/:id/:basename.:extension",
                      :path => ":rails_root/public/assets/appstore/mobile_app/plists/:id/:basename.:extension"
    has_attached_file :ipa, 
                      :url => "/assets/appstore/mobile_app/ipas/:id/:basename.:extension",
                      :path => ":rails_root/public/assets/appstore/mobile_app/ipas/:id/:basename.:extension"
    has_attached_file :icon, 
                      :url => "/assets/appstore/mobile_app/icons/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/appstore/mobile_app/icons/:id/:style/:basename.:extension",
                      :styles => { :thumb => "72x72>" }
    attr_accessible :name, :organization_id, :plist, :ipa, :icon, :organization
    belongs_to :organization
  end
end