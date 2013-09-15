Avh5::Application.routes.draw do
  get "tack/show"
  get "tack/index"
  get "calc/index"
resources :showblogs  do 
resources :showruns
end

  root 'welcome#index'

 
end

