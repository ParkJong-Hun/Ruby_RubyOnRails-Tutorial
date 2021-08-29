class ReadHomeController < ApplicationController
    def index
        @posts = Post.all
    end

    def write

    end

    def create
        #정보를 저장하는 기본 명령어
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save

        #다른 페이지로 이동시키기
        redirect_to '/read/index'
    end

    def modify
        #Post.all과 다르게 하나만 가져옴
        @post = Post.find(params[:post_id])
    end

    def update
        #한 데이터의 정보를 수정하여 업데이트하는 기본 명령어
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save
        redirect_to '/read/index'
    end

    def delete
        #한 데이터를 삭제하기
        Post.destroy(params[:post_id])
        #뒤로 가기 redirect_back(구 버전: redirect_to :back)
        redirect_to '/read/index'
    end
end
