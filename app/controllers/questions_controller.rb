class QuestionsController < ApplicationController

  def ask
   #nothing for the moment

  end

  def answer
    @question = params[:question] # I want to retrieve the value of a form input
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
