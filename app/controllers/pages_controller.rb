class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :comingsoon, :solutions]

  def home
  end

  def myappointments
    @appointments = Appointment.where(user: current_user)
  end

  def comingsoon
  end

  def solutions
  end
end
