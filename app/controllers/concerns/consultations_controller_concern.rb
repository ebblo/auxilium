module ConsultationsControllerConcern
  extend ActiveSupport::Concern

  def index
    @past_consultations = @patient.consultations.past.order(date: :desc)
    @upcoming_consultations = @patient.consultations.upcoming.order(date: :desc)
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end

  def show
    @consultation_medications = @consultation.consultation_medications.includes(:medication)
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end
end