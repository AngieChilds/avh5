Avh5::Application.routes.draw do
resources :arena do

end

resources :showblogs  do 
resources :showruns
end

  root 'welcome#index'

 
end


