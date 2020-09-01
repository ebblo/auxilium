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
      from: "Docteur XXXXXXXXXXXX",
      to: ENV["NEXMO_PHONE_NUMBER"],
      text: "Cher YYYYYYYYYYYYY, n'oubliez votre rendez-vous demain à ZZZZZZZZZZZZZZZZZZ."
    )
  end
end
