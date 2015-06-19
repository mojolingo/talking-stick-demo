Rails.application.routes.draw do

  mount TalkingStick::Engine => '/talking_stick'

  root 'talking_stick/rooms#index'
  
end
