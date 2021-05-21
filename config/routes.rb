Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      resources :doctors
    end
  end

  namespace 'api' do
    namespace 'v1' do 
      resources :patients
    end
  end

  namespace 'api' do
    namespace 'v1' do 
      resources :appointments
    end
  end
end