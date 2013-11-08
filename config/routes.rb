Avh5::Application.routes.draw do
  

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


