Avh5::Application.routes.draw do
resources :showblogs  do 
resources :showruns
end
 
  root 'welcome#index'

 
end

