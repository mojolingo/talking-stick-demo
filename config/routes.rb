Rails.application.routes.draw do

  mount TalkingStick::Engine => '/'

  root 'welcome#index'

end
