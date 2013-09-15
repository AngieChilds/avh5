Avh5::Application.routes.draw do
 
  get "calc/index"
  get "calc/show"
resources :showblogs  do 
resources :showruns
end

  root 'welcome#index'

 
end

