Rails.application.routes.draw do
  root 'home#index'
  post 'contacts', to: 'home#contact_message'
  get 'activate', to: 'pages#activate'
end
