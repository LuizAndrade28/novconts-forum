Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'entrar',
    sign_out: 'sair',
    password: 'senha',
    registration: '',
    sign_up: 'cadastrar',
    edit: 'editar',
    cancel: 'cancelar'
  }

  root to: "pages#home"

  resources :posts, except: %i[index] do
    resources :comments, only: %i[new create destroy]
  end

  get "meus_posts", to: "posts#index", as: :meus_posts
end
