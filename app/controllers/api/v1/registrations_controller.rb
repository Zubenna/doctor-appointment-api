module Api
  module V1
    class RegistrationsController < ApplicationController
      def index
        patients = Patient.order('created_at ASC')
        render json: { status: 'SUCCESS', message: 'Loaded Patient list', data: patients }, status: :ok
      end

      def show
        patient = Patient.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded Patient', data: patient }, status: :ok
      end

      def create
        patient = Patient.new(patient_params)
        if patient.save
          render json: { status: 'SUCCESS', message: 'Saved Patient', data: patient }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Patient not saved', data: patient.errors },
                 status: :unprocessable_entity
        end
      end

      private

      def patient_params
        params.permit(:firstname, :lastname, :phone_number, :email, :address, :password_digest)
      end
    end
  end
end
