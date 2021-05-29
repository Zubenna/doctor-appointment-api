module Api
  module V1
    class RegistrationsController < ApplicationController
      def index
        patients = Patient.all
        if patients
          render json: { status: 'SUCCESS', message: 'Loaded Patients list', data: patients }
        else
          render json: { status: 500, message: 'Patient not fount', data: patient.errors }
        end
      end

      def show
        patient = Patient.find(params[:id])
        if patient
          render json: { status: 'SUCCESS', message: 'Loaded Patient', data: patient }
        else
          render json: { status: 500, message: 'Patient not fount', data: patient.errors }
        end
      end

      def create
        patient = Patient.create(patient_params)
        if patient.save
          # login!
          render json: { status: 'created', message: 'Saved Patient', data: patient }
        else
          render json: { status: 500, message: 'Patient not saved', errors: patient.errors }
        end
      end

      private

      def patient_params
        params.permit(:full_name, :username, :phone_number, :email, :address, :password_digest)
      end
    end
  end
end
