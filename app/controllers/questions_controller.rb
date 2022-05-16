class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:question]
    if params[:question]
      # @members = @members.select { |member| member.start_with?(params[:member]) }
      if params[:question].include? 'I am going to work'
        @answer = 'Great!'
      elsif params[:question].include? '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      @answer
    end
  end
end
