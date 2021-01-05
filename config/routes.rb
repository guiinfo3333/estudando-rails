Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # delete "produtos/:id", to: "produtos#destroy", as: :produto
  
  # post "produtos", to: "produtos#create"

  # get "produtos/new",to:"produtos#new"
  # atalho pra eu gerar tudo relativo a produto
  get "produtos/busca", to: "produtos#busca",as: :busca_produto
  resources :produtos,only:[:new,:create,:destroy]  
  root to: "produtos#index"
end


