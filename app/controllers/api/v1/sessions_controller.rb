module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        patient = Patient.find_by(username: session_params[:username])
        # if patient && patient.authenticate(session_params[:password_digest])
        if patient
          # login!
          render json: { status: :created, logged_in: true, data: patient }, status: 201
        else
          render json: { status: 401, errors: ['no such user, please try again'] }
        end
      end

      def logged_in?
        if logged_in? && current_user
          render json: { logged_in: true, patient: current_user }, status: 201
        else
          render json: { logged_in: false, message: 'no such user' }, status: 401
        end
      end

      def destroy
        logout!
        render json: { status: 200, logged_out: true }
      end

      private

      def session_params
        params.permit(:username)
      end
    end
  end
end
