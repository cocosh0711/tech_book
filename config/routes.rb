Rails.application.routes.draw do
  get 'reading_logs/logs'
  namespace :books do
    get 'memos/index'
  end
  get 'books/index'
  resources :books do
    resources :reading_logs, only: [:index, :create]
    resources :memos
  end
end
