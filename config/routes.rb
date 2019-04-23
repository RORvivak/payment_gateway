Rails.application.routes.draw do
	post "transaction", to: "transactions#inform_generator"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
