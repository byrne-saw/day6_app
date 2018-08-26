Rails.application.routes.draw do
  get "/random_fortune" => 'api/example_pages#random_fortune_action'
  get "/lotto" => 'api/example_pages#lotto_action'
  get "/beer" => 'api/example_pages#beer_action'
end
