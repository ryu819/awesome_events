Rails.application.routes.draw do
  root 'welcome#index'
  get 'status' => 'status#index', defaults: { format: 'json' }

  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  resource :retirements
  resources :events do
    resources :tickets
  end
end
