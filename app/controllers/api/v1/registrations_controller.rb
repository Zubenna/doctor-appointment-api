module Api
  module V1
    class RegistrationsController < ApplicationController
      # skip_before_action :verify_authenticity_token

      def index
        patients = Patient.order('created_at ASC')
        if patients
          render json: { status: 'SUCCESS', message: 'Loaded Patient list', data: patients }, status: :ok
        else
          render json: { status: 500, errors: ['no users found'] }
        end
      end

      def show
        patient = Patient.find(params[:id])
        if patient
          render json: { status: 'SUCCESS', message: 'Loaded Patient', data: patient }, status: :ok
        else
          render json: { status: 500, errors: ['user not found'] }
        end
      end

      def create
        patient = Patient.new(patient_params)
        if patient.save
          # login!
          render json: { status: :created, message: 'Saved Patient', data: patient }, status: :ok
        else
          render json: { status: 500, message: 'Patient not saved', errors: patient.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      private

      def patient_params
        params.permit(:full_name, :username, :phone_number, :email, :address, :password_digest)
      end
    end
  end
end
