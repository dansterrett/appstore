Alohomora::SessionsController.class_eval do
  def create
    warden.authenticate!
    redirect_to appstore.welcome_index_path, notice: "Signed in successfully."
  end

  def destroy
    env['warden'].logout
    redirect_to alohomora.signin_path, notice: "Signed out successfully."
  end

end