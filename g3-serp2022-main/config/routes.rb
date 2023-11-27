Rails.application.routes.draw do
  root 'home#index'


  get "home/evform"
  post "home/evform", to: "home#result"


  get 'home/questionform'
  get 'home/exporteddata'
  get 'home/questionans'
  get 'home/result'
  post "home/evform"
  get 'home/privacypolicy'
  get 'home/faq'
  get 'home/spec'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
