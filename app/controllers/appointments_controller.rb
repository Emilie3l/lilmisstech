class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: []

  def create
    @appointment = Appointment.new(appointment_strong_params)

    @appointment.user = current_user
    if @appointment.save
      redirect_to myappointments_path
      flash[:notice] = "Your appointment has been created."
    else
      flash[:alert] = "Some information is missing."
      render "appointments/new"
    end
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to myappointments_path
  end

  private

  def appointment_strong_params
    params.require(:appointment).permit(:operating_system, :tool, :description, :date, :time, :completed, :user)
  end
end
