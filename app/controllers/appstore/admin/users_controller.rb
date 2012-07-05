module Appstore
  class Admin::UsersController < Admin::ApplicationController
    before_filter :authenticate!, :admin?
    
    def index
      @users = User.all
    end
    
    def show
      @user = User.find(params[:id])
    end
    
    def edit
      @user = User.find(params[:id])
    end
    
    def update
      @user = User.find(params[:id])
      
      # Remove existing organization relationships
      @user.organizations = []
      
      # Assign organizations relationships
      org_ids = params[:organization_id]
      if org_ids
        if (org_ids.class != Array)
          org_ids = [org_ids]
        end
      
        org_ids.each do |org_id|
          @user.organizations.push(Alohomora::Organization.find(org_id))
        end
      end
      
      if @user.update_attributes(params[:user])
        redirect_to admin_user_path(@user), :notice  => "Successfully updated user."
      else
        render :edit
      end
    end
    
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path, :notice => "Successfully destroyed mobile app."
    end
  end
end