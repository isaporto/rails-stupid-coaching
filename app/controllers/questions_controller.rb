class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coachAnswer = ''
    if params[:question].end_with?("?")
      @coachAnswer = "Silly question, get dressed and go to work!"
    elsif params[:question] != "I am going to work right now!"
      @coachAnswer = "I don't care, get dressed and go to work!"
    else
      @coachAnswer = "Great!"
    end
  end    
end
