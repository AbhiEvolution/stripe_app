require "rqrcode"

class BookingsMailer < ApplicationMailer
  def booking_confirmation(booking)
    qrcode = RQRCode::QRCode.new(booking_root_path(booking.id))
    @svg = qrcode.as_svg(
      color: "green",
      shape_rendering: "crispEdges",
      module_size: 11,
      standalone: true,
      use_path: true,
    )
    @booking = booking
    @customer = booking.customer
    @workshop = booking.workshop

    mail to: @customer.email, subject: "Booking Confirmation for #{@workshop.name}"
  end

  private

  def booking_root_path(booking_id)
    if Rails.env.development?
      "http://localhost:3000/bookings/#{booking_id}/booking_details"
    else
    end
  end
end
