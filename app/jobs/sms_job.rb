class SmsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # @patient = Patient.find(params[:patient_id])
    # @doctor = current_user
    # unless @patient.consultations.where(public_report: nil).nil?
    #   @next_consultation = @patient.consultations.where(public_report: nil).first
    # end

    require 'nexmo'

    client = Nexmo::Client.new(
      api_key: ENV["NEXMO_API_KEY"],
      api_secret: ENV["NEXMO_API_SECRET"]
    )

    client.sms.send(
      from: "Docteur Vidal",
      to: ENV["NEXMO_PHONE_NUMBER"],
      text: "Bonjour Zachariah, votre consultation du lundi 7 septembre à 10:00 est bien confirmée."
    )
  end
end
