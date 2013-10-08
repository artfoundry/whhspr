Whhspr::Application.routes.draw do
  resources :discussions, except: [:new]
  resources :comments, except: [:new]

end
