Rails.application.routes.draw do
  resources :movimento_estoques
  resources :operacaos
  resources :produtos
  resources :unidades
  resources :grupo_produtos
  resources :pessoas
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
