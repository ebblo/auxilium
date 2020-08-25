class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # current_user.doctor? ? link_to "Patient index", patients_path
    if current_user.type == "Doctor"
      redirect_to patients_path
    else
      redirect_to patient_path(current_user)
    end
  end
end 