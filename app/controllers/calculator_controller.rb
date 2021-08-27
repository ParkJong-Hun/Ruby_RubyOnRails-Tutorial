class CalculatorController < ApplicationController
    #add라는 action 만들기
    def add 
        @message = "Hello I'm information"
    end
    def result
        #@result = params[:first] + params[:second] -> 문자열로 됨!!
        @result = params[:first].to_i + params[:second].to_i
    end
end
