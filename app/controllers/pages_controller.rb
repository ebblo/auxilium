class PagesController < ApplicationController
  # skip_before_action :authenticate_patient!, only: :home
  # skip_before_action :authenticate_doctor!, only: :home

  def home
  end

  def dashboard
    current_doctor ? (redirect_to patients_path) : (redirect_to root_path)
  end
end 