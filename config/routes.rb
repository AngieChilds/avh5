Avh5::Application.routes.draw do
  

  get "animal/index"
  get "animal/show"
  get "animal/edit"
resources :requests do
resources :horselists
  end
resources :arena do

end

resources :showblogs  do 
resources :showruns
end

  root 'welcome#index'

 
end


