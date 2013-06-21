Sed::Application.routes.draw do

  resources :actividades


        resources :programas do 
        resources :unidades 
    end
    
    get "home/index"

    resources :evaluaciones

    resources :actividades

    resources :temas

    resources :unidades

    resources :programas

    root :to => "home#index"
end
