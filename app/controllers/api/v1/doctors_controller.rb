module Api
  module V1
    class DoctorsController < ApplicationController
      def create
        doctor = Doctor.new(doctor_params)
        if doctor.save
          render json: { status: 'SUCCESS', message: 'Saved Doctor', data: doctor }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Doctor not saved', data: doctor.errors },
                 status: :unprocessable_entity
        end
      end

      private

      def doctor_params
        params.permit(:firstname, :lastname, :email, :phonenumber, :specialty, :years_of_experience, :picture,
                      :location)
      end
    end
  end
end
