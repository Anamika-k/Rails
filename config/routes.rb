Rails.application.routes.draw do
  get 'show', to:"employees#show"
  post 'save', to:"employees#save"
end
