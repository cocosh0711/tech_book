Rails.application.routes.draw do
  resources :books, defaults: { format: :json } do
    resources :reading_logs, only: [:index, :create], defaults: { format: :json }
    resources :memos, defaults: { format: :json }
  end
end
