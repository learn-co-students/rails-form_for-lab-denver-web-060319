Rails.application.routes.draw do

  get 'students/new'

  get 'students/create'

  get 'students/show'

  get 'students/edit'

  get 'students/update'

  # get 'studnets/new'

  # get 'studnets/create'

  # get 'studnets/show'

  # get 'studnets/edit'

  # get 'studnets/update'

  # get 'school_classes/new'

  # get 'school_classes/create'

  # get 'school_classes/show'

  # get 'school_classes/edit'

  # get 'school_classes/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes
  resources :students
end
