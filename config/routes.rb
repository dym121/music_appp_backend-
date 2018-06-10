Rails.application.routes.draw do
root to: 'music#index'

 get 'music/show/:id', to: 'music#show'

 get 'music/new', to: 'music#new'

 get 'music/create', to: 'music#create'

 get 'music/edit/:id', to: 'music#edit'

 get 'music/update/:id', to: 'music#update'

 get 'music/destroy/:id', to: 'music#destroy'
end
