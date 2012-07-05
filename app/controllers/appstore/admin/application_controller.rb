module Appstore
  class Admin::ApplicationController < ApplicationController
    def admin?
      puts "****************************" + current_user.last_name.to_s + ", " + current_user.admin?.to_s
      throw(:warden) if !current_user.admin?
    end
  end
end