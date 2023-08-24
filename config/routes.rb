# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'weather', to: 'home#show'
end
