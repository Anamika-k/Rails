Rails.application.routes.draw do
  get 'show', to:"employees#show"
  post 'save', to:"employees#save"
  get 'index', to:"department#index"
  post 'save_dept', to:"department#save_dept"
end
