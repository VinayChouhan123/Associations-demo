Rails.application.routes.draw do
  
  get 'appointments/index'
  get 'appointments/new'
  get 'appointments/edit'
  get 'appointments/show'
  get 'patients/index'
  get 'patients/new'
  get 'patients/edit'
  get 'patients/show'
  get 'physicians/index'
  get 'physicians/new'
  get 'physicians/edit'
  get 'physicians/show'
  get 'account_historys/index'
  get 'account_historys/show'
  get 'account_historys/edit'
  get 'account_historys/new'
  get 'accounts/index'
  get 'accounts/show'
  get 'accounts/edit'
  get 'accounts/new'
  get 'courses/index'
  get 'courses/new'
  get 'courses/edit'
  get 'courses/show'
  get 'students/index'
  get 'students/new'
  get 'students/edit'
  get 'students/show'
  get 'authers/index'
  get 'books/index'
  root 'authers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :authers
  resources :books 
  resources :students
  resources :courses
  resources :suppliers
  resources :accounts
  resources :account_historys
  resources :physicians
  resources :appointments
  resources :patients
end
