class MessageMailer < ApplicationMailer

  def submission(truck)
    mail  to: truck.email,
          subject: "Demande de réservation",
          from: ENV['TRUCK_TRACKER_EMAIL']
  end
end
