Rails.application.routes.draw do
  resources :books do
    resources :reading_logs, only: [:index, :create]
    resources :memos
  end
end
