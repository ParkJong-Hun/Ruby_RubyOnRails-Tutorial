Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get '/' => 'home#index' : /로 접속을하면 home controller 안에 있는 index로 작업을 하라고 함.
  #action과 url을 연결하기
  get '/index' => 'home#index'
  get '/add' => 'calculator#add'
end
