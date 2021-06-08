class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  private

  def configure_devise_permitted_parameters
    if guest = params[:guest]
      devise_parameter_sanitizer.permit(:sign_up, keys: [
        :nickname, :email, :password, :password_cofirmation, :last_name, :first_name, :sex_id, :personality_id, :postal_code, :prefecture_id, :town, :address, :building, :job_id, :introduction, :request
        ])
    elsif host = params[:host]
      devise_parameter_sanitizer.permit(:sign_up, keys: [
        :nickname, :email, :password, :password_cofirmation, :last_name, :first_name, :sex_id, :personality_id, :postal_code, :prefecture_id, :town, :address, :building, :job_id, :introduction, :condition
        ])
    end
  end

  
end
