module Api
  module V1
    class RegistrationsController < ApplicationController
      def index
        users = User.all
        if users
          render json: { status: 'SUCCESS', message: 'Loaded Patients list', data: users }
        else
          render json: { status: 500, message: 'User not fount', data: user.errors }
        end
      end

      def show
        user = User.find(params[:id])
        if user
          render json: { status: 'SUCCESS', message: 'Loaded Patient', data: user }
        else
          render json: { status: 500, message: 'User not fount', data: user.errors }
        end
      end

      def create
        user = User.create(user_params)
        if user.save
          # login!
          render json: { status: 'created', message: 'Saved Patient', data: user }
        else
          render json: { status: 500, message: 'Patient not saved', errors: user.errors }
        end
      end

      private

      def user_params
        params.permit(:full_name, :username, :phone_number, :email, :address, :password, :password_confirmation)
      end
    end
  end
end
