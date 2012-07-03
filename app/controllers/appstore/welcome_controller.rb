require_dependency "appstore/application_controller"

module Appstore
  class WelcomeController < ApplicationController
    before_filter :authenticate!
    
    def index
      
    end
    
  end
end
