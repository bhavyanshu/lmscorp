Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :company, :path => 'companies' do
    collection do
      get 'alphabetically', :action => 'alphabatical_index'
      get 'with_modern_plan', :action => 'modern_index'
      get 'not_trialing', :action => 'not_trailing_index'
      get 'created_last_month', :action => 'last_month_index'
    end
  end

end
