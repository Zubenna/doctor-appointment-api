module Api
  module V1
    class SessionsController < ApplicationController
      def create
        @user = User.find_by(username: session_params[:username])
        if @user&.authenticate(session_params[:password])
          login!
          render json: { status: 'created', logged_in: true, data: user }
        else
          render json: { status: 401, errors: user.errors }
        end
      end

      def logged_in?
        if logged_in? && current_user
          render json: { logged_in: true, user: current_user }
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
