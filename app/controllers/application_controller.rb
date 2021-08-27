class ApplicationController < ActionController::Base
    #post 방식으로 전달 시 유효하지 않은 토큰 에러 안나게 임시로 작성하는 것
    skip_forgery_protection
end
