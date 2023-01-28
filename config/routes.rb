Rails.application.routes.draw do
         # Podkluchenie Awtorizacii
  devise_for :users

  devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
   end
  
   root to: "home#index"
  #//////////////////////////////////////////////////////////////////////
  get '/' =>'home#index'    # Eto nuzno wsegda!
  #get 'home/index'
  
  get 'terms' => 'pages#terms' #Контроллер и роутинг статических страниц :rails g controller Pages
  get 'about' => 'pages#about'
  
  resources :articles do  #вложенный маршрут:
     resources :comments
  end #4 
                                           #get 'contacts' => 'contacts#new' only:[:create]
  resource :contacts, only: [:new,:create], path_names: { :new => '' }
                                            #Etot code dla 'contacts' => 'contacts#new'
                                            # Chtoby "contacts#new" otkrywalsa w "contacts"
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# 1. rails g controller home index     :zapusk (home - контроллер index - экшен

# 2. rails g model Article title:string text:text    Создадим модель:

# 3. rake db:migrate       Wupolnaem migraciju

# 4.  Sozdayom "REST" на Rails версии 6.1+ необходимо используйть команду: rails routes, 
# потому что rake routes не работает в последних версиях.# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

