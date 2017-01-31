foo = 'users#index'

Rails.application.routes.draw do

  get    'users'          => 'users#index'

  get    'users/new'      => 'users#new'

  post   'users/new'      => 'users#create'

  get    'users/:id'      => 'users#show'

  put    'users/:id'      => 'users#update'

  delete 'users/:id'      => 'users#delete'

  get    'users/:id/edit' => 'users#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
