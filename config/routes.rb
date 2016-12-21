Rails.application.routes.draw do

  scope '/api' do
    resources :groups, except: [:new, :edit] do
      resources :places, except: [:new, :edit]
      resources :weapons, except: [:new, :edit]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
