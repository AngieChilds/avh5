Avh5::Application.routes.draw do
resources :arena
 
resources :showblogs  do 
resources :showruns
end

  root 'welcome#index'

 
end

