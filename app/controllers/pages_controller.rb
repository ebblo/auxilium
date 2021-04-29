class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    current_user.doctor? ? (redirect_to patients_path) : (redirect_to my_profile_path)
  end
end 