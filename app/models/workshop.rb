class Workshop < ApplicationRecord
  has_many :bookings
  has_many :custombers, through: :bookings
  validates :name, :description, presence: true
  validates :start_date, :end_date, :start_time, :end_time, presence: true
  validates :total_seats, :registration_fee, presence: true,
                                             numericality: true
  validates :end_date, comparison: { greater_than: :start_date, message: "start date must be greater than end date" }

  def total_duration
    "From #{start_date} to #{end_date}"
  end

  def daily_hours
    "#{((start_time.to_time - end_time.to_time) / 1.hours).abs} hours"
  end

  def total_time
    "Everyday From #{start_time} to #{end_time} (#{daily_hours})"
  end
end
