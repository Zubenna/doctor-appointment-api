module Api
  module V1
    class SessionsController < ApplicationController
      def create
        # patient = Patient.find_by(username: session_params[:username])
        if patient&.authenticate(session_params[:password])
          # if patient
          login!
          render json: { status: :created, logged_in: true, data: patient }
        else
          render json: { status: 401, errors: ['no such user, please try again'] }
        end
      end

      def logged_in?
        if logged_in? && current_user
          render json: { logged_in: true, patient: current_user }
        else
          render json: { logged_in: false, message: 'no such user' }
        end
      end

      def destroy
        logout!
        render json: { status: 200, logged_out: true }
      end

      private

      def session_params
        params.permit(:username, :password)
      end
    end
  end
end
