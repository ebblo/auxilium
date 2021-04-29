module PatientsControllerConcern
  extend ActiveSupport::Concern

  def patient_profile
    # @doctor = @patient.doctor
    @next_consultation = @patient.next_consultation
    @last_consultation = @patient.last_consultation
    # @new_consultation = Consultation.new
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end

end