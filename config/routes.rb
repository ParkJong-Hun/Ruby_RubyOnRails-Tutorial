Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get '/' => 'home#index' : /로 접속을하면 home controller 안에 있는 index로 작업을 하라고 함.
  #action과 url을 연결하기
  get '/index' => 'home#index'
  get '/add' => 'calculator#add'

  post '/result' => 'calculator#result'
  #input name을 가져와서 사용할 수 있다.
  get '/result/:first/:second' => 'calculator#result'

  get '/read/index' => 'read_home#index'
  get '/read/write' => 'read_home#write'
  post '/read/create' => 'read_home#create'
  #:으로 모델의 데이터 정보를 받아오기
  get '/read/modify/:post_id' => 'read_home#modify'
  post '/read/update/:post_id' => 'read_home#update'
  get '/read/delete/:post_id' => 'read_home#delete'
end
