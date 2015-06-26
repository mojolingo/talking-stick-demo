Rails.application.routes.draw do

  mount TalkingStick::Engine => '/talking_stick'

  root 'welcome#index'

  get 'rooms' => 'talking_stick/rooms#index'
  
end
