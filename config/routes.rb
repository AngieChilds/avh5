Avh5::Application.routes.draw do
map.resources :showblogs  do |showblogs|
showblogs.resources :showruns, :name_prefix => "showblog"
end
 
  root 'welcome#index'

 
end

