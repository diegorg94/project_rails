Rails.application.routes.draw do
  delete "users/:id", to: "users#destroy", as: "destroy"
  resources :users, except: [:destroy] do
  	collection do
  		get 'recently'
    end
    #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end