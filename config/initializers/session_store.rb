if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_stormy-badlands-31674', domain: 'doctor-appointment-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_stormy-badlands-31674'
end
