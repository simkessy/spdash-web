Rails.application.routes.draw do
  root 'home#index'
  post 'contacts', to: 'home#contact_message'
end
