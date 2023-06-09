Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages, only: [] do
        collection do
          get "random", to: "messages#random_greetings"
        end
      end
    end
  end
end
