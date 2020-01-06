Rails.application.routes.draw do
    root 'home#index'
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
    get '/:id' => 'home#show', as: 'profile'
    get '/:id/edit' => 'home#edit', as: 'edit_profile'
    patch '/update/profile' => 'home#update', as: 'update_profile'
    resources :pins, except: :index

    get '/like/:id' => 'votes#new', as: 'user_like'
end
