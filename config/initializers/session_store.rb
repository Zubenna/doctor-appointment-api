if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_doctor-appointment-app', domain: 'doctor-appointment-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_doctor-appointment-app'
end
