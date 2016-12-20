Rails.application.routes.draw do

  scope '/api' do
    resources :groups, except: [:new, :edit]
    resources :places, except: [:new, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
