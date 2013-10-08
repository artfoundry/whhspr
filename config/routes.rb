Whhspr::Application.routes.draw do
  resources :discussions, except: [:new, :edit, :destroy, :update]
  resources :comments, except: [:new]

  root to: 'discussions#index'

end
