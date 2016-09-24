Rails.application.routes.draw do
    get '/register', to: 'users#new'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    root 'static_pages#home'
end
