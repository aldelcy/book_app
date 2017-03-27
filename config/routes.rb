Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'site#home'


  resources :books
  resources :checkouts

  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  post 'search' => "site#search"
  post 'check' => "site#check"
  

  # HAS TO BE LAST ROUTE
  match '*unmatched_route', to: 'site#not_found', via: :all
end
