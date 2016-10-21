Rails.application.routes.draw do

  resources:newsinfos do
    resources :tasks,only: [:create,:destroy]
  end
    root'newsinfos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
