#rails generate model <모델이름>: 모델 생성
#데이터가 어떤 형식으로 저장되어질지 설정
#1. rails g model <모델이름>
#2. config/db/migration의 migration 파일 수정
#3. rake db:migrate
class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      #짧은 문자열 : string
      #긴 문자열 : text
      #숫자 : integer
      #참/거짓 : boolean
      t.string  :title
      t.text    :content
    end
  end
end
