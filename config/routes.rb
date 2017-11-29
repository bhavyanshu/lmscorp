Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :company, :path => 'companies' do
    collection do
      get 'alphabetically', :action => 'alphabatical_index'
    end
  end

end
