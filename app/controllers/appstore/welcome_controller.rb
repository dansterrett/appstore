require_dependency "appstore/application_controller"

module Appstore
  class WelcomeController < ApplicationController
    before_filter :authenticate!
    
    def index
      # Only show apps that belong to the user's organizations
      org_ids = current_user.organizations.map { |org| org.id }
      @mobile_apps = MobileApp.where(:organization_id => org_ids)
    end
    
  end
end
