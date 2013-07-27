Avh5::Application.routes.draw do
resources :showblogs  do 
resources :showruns, :name_prefix => "showblog"
end
 
  root 'welcome#index'

 
end

