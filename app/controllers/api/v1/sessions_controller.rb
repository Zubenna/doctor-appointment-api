module Api
  module V1
    class SessionsController < ApplicationController
      def create
        patient = Patient.find_by(email: params[:email])
        if patient
          session[:patient_id] = patient.id
          render json: { status: :created, logged_in: true, patient: patient }, status: 201
        else
          render json: { status: 401 }, status: 401
        end
      end

      def logged_in
        if @current_patient
          render json: {
            logged_in: true,
            patient: @current_patient
          }, status: 201
        else
          render json: {
            logged_in: false
          }, status: 401
        end
      end

      def logout
        reset_session
        render json: {
          status: 200,
          logged_out: true
        }
      end
    end
  end
end
