Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # SEE ALL PETS
  get 'pets', to: 'pets#index'

  # ADD A PET
  get 'pets/new', to: 'pets#new', as: 'new_pet'
  post 'pets', to: 'pets#create'

  # SEE DETAILS ABOUT ONE PET
  get 'pets/:id', to: 'pets#show', as: 'pet'

  # UPDATE PET
  get 'pets/:id/edit', to: 'pets#edit', as: 'edit_pet'
  patch 'pets/:id', to: 'pets#update'

  delete 'pets/:id', to: 'pets#destroy'
end
