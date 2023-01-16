Rails.application.routes.draw do
  get 'home/index'
  #get '/' =>'home#index'    # Eto nuzno wsegda!
  #get 'home/index'
  resources :articles #4 
  resources :contacts, only: [:new,:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


# 1. rails g controller home index     :zapusk (home - контроллер index - экшен

# 2. rails g model Article title:string text:text    Создадим модель:

# 3. rake db:migrate       Wupolnaem migraciju

# 4.  Sozdayom "REST" на Rails версии 6.1+ необходимо используйть команду: rails routes, 
# потому что rake routes не работает в последних версиях.# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

