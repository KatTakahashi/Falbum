Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :public do
    root 'homes#top'
  end

end
