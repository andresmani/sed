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
    
    match "/update_grupos" => "estudiantes#update_grupos"
    get "home/index"
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
