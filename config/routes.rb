Avh5::Application.routes.draw do
resource :showblogs  do
resource :showruns
end
 
  root 'welcome#index'

  
end
