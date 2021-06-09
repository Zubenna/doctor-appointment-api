module Api
  module V1
    class AppointmentsController < ApplicationController
      def index
        appointments = Appointment.order('created_at ASC')
        render json: { status: 'SUCCESS', message: 'Loaded Appointmet list', data: appointments }, status: :ok
      end

      def show
        appointments = Appointment.where(user_id: params[:id])
        if appointments.empty?
          render json: { error: 'Could not find the appointment' }, status: 404
        else
          render json: { status: 'SUCCESS', message: 'Loaded Appointment', data: appointments }, status: 200
        end
      end

      def create
        appointment = Appointment.new(appointment_params)
        if appointment.save
          render json: { status: 'SUCCESS', message: 'Saved Appointment', data: appointment }, status: 200
        else
          render json: { status: 'ERROR', message: 'Appointment not saved', data: appointment.errors },
                 status: :unprocessable_entity
        end
      end

      def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
        render json: { status: 'SUCCESS', message: 'Deleted appointment', data: appointment }, status: :ok
      end

      def update
        appointment = Appointment.find(params[:id])
        if appointment.update_attributes(appointment_params)
          render json: { status: 'SUCCESS', message: 'Updated Appointment', data: appointment }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Appointment not updated', data: appointment.errors },
                 status: :unprocessable_entity
        end
      end

      private

      def appointment_params
        params.permit(:user_id, :doctor_id, :appointment_date, :location, :doctor_name)
      end
    end
  end
end
