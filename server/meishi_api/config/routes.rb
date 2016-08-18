Rails.application.routes.draw do
  constraints subdomain: 'api' do

    scope module: 'api' do
      namespace :v1 do
        #API01
        post 'business_cards', to: 'business_cards#create'
        #API02
        put 'business_cards/:id', to: 'business_cards#update'
        #API07
        post 'sign_in', to: 'users#sign_in'
        #API08
        delete 'sign_out', to: 'users#sign_out'
        # resources :roles
        # get 'current', to: 'roles#current'
      end
    end
  end
end
