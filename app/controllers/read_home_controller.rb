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
end
