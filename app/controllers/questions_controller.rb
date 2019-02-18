class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]

    if @question == 'i am going to work right now!'
      @stupidcoach = 'Great!'
    elsif @question.end_with?('?')
      @stupidcoach = 'Silly question, get dressed and go to work!'
    else
      @stupidcoach = "I don't care, get dressed and go to work!"
    end
  end
end
