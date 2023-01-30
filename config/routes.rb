# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles do
    collection do
      post :update_liked
    end
  end

  root "articles#index"
end
