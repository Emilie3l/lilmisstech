class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :comingsoon, :quickfix, :expert]

  def home
  end

  def myappointments
    @appointments = Appointment.where(user: current_user)
  end

  def comingsoon
  end

  def expert
  end

  def quickfix
  end
end
