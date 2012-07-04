module Appstore
  class MobileAppsController < ApplicationController
    def index
      @mobile_apps = MobileApp.all
    end

    def show
      @mobile_app = MobileApp.find(params[:id])
    end

    def new
      @mobile_app = MobileApp.new
    end

    def create
      @mobile_app = MobileApp.new(params[:mobile_app])
      if @mobile_app.save
        redirect_to @mobile_app, :notice => "Successfully created mobile app."
      else
        render :new
      end
    end

    def edit
      @mobile_app = MobileApp.find(params[:id])
    end

    def update
      @mobile_app = MobileApp.find(params[:id])
      if @mobile_app.update_attributes(params[:mobile_app])
        redirect_to @mobile_app, :notice  => "Successfully updated mobile app."
      else
        render :edit
      end
    end

    def destroy
      @mobile_app = MobileApp.find(params[:id])
      @mobile_app.destroy
      redirect_to mobile_apps_url, :notice => "Successfully destroyed mobile app."
    end
    
    def gallery
      # TODO: only show apps that belong to the user's organizations
      @mobile_apps = MobileApp.all
    end
  end
end
