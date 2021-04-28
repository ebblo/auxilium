class ConsultationsController < ApplicationController
  include ConsultationsControllerConcern

  before_action :authenticate_patient!

  before_action :set_patient, only: [ :index, :show ]
  before_action :set_consultation, only: [ :show ]


  private

  def set_patient
    @patient = current_patient
  end

  def set_consultation
    @consultation = Consultation.find(params[:id]) if Consultation.find(params[:id]).patient == current_patient
  end
end
