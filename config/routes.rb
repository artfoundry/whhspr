Whhspr::Application.routes.draw do

  resources :discussions, :comments

  root to: 'discussions#index'

end
