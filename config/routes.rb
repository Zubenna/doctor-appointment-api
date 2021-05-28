Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      resources :doctors
    end
  end

  # resources :doctors, only: [:show, :create, :index, :delete]
  namespace 'api' do
    namespace 'v1' do 
      resources :registrations
    end
  end

  namespace 'api' do
    namespace 'v1' do 
      resources :appointments
    end
  end
  
  namespace 'api' do
    namespace 'v1' do 
      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
    end
  end
end