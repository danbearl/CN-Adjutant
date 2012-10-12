Adjutant::Application.routes.draw do

  resources :notes
  resources :time_logs

  resources :clients do
    resources :projects, :invoices
  end

  resources :projects do
    resources :notes, :time_logs
  end

  root :to => 'home#index'

end
