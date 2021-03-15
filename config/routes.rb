Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        post '/order', to: 'order#create', as: 'create_order_v1'
      end
  end
end
