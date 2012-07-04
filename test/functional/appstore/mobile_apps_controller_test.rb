require 'test_helper'

module Appstore
  class MobileAppsControllerTest < ActionController::TestCase
    def test_index
      get :index
      assert_template 'index'
    end

    def test_show
      get :show, :id => MobileApp.first
      assert_template 'show'
    end

    def test_new
      get :new
      assert_template 'new'
    end

    def test_create_invalid
      MobileApp.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end

    def test_create_valid
      MobileApp.any_instance.stubs(:valid?).returns(true)
      post :create
      assert_redirected_to mobile_app_url(assigns(:mobile_app))
    end

    def test_edit
      get :edit, :id => MobileApp.first
      assert_template 'edit'
    end

    def test_update_invalid
      MobileApp.any_instance.stubs(:valid?).returns(false)
      put :update, :id => MobileApp.first
      assert_template 'edit'
    end

    def test_update_valid
      MobileApp.any_instance.stubs(:valid?).returns(true)
      put :update, :id => MobileApp.first
      assert_redirected_to mobile_app_url(assigns(:mobile_app))
    end

    def test_destroy
      mobile_app = MobileApp.first
      delete :destroy, :id => mobile_app
      assert_redirected_to mobile_apps_url
      assert !MobileApp.exists?(mobile_app.id)
    end
  end
end