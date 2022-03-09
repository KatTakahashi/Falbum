Rails.application.routes.draw do
  
# =============== 管理者用(URLに/admin/を付与する為、namespace) ===============
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

# =============== 会員用(URLに/public/不要な為、scope module) ===============
  devise_for :users, controllers: {
  registrations: 'public/registrations',
  passwords: 'public/passwords',
  sessions: 'public/sessions'
  }
  
  scope module: :public do
    root 'homes#top'
  end

end
