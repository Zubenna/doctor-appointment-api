class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!, :set_user

  def login!
    session[:patient_id] = patient.id
  end

  def logged_in?
    !!session[:patient_id]
  end

  def current_user
    @current_user ||= Patient.find(session[:patient_id]) if session[:patient_id]
  end

  def authorized_user?
    patient == current_user
  end

  def logout!
    session.clear
  end

  def set_user
    Patient.find_by(id: session[:patient_id])
  end
end
