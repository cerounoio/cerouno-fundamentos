Rails.application.routes.draw do
  post :contact, to: 'site#contact'
  root 'site#show'
end
