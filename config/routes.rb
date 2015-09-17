Rails.application.routes.draw do

  mount TalkingStick::Engine => '/talking_stick'

  root 'welcome#index'

end
