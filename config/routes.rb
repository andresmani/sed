Sed::Application.routes.draw do

    resources :programas do 
        resources :grupos
    end

    resources :unidades do
        resources :temas
    end

    resources :temas do 
        resources :actividades
    end

    resources :evaluaciones do 
        member do 
            get :download 
        end
    end     

    get "home/index"
    get "logout" => "sessions#destroy", :as => "logout"
    get "login"  => "sessions#new", :as => "login"
    get "signup" => "users#new", :as => "signup"
    
    match "/update_grupos" => "estudiantes#update_grupos"

    resources :users

    resources :sessions

    resources :estudiantes

    resources :tpodocumentos

    resources :grupos

    resources :actividades

    resources :evaluaciones 

    resources :actividades

    resources :temas

    resources :unidades

    resources :programas

    root :to => "home#index"
end
