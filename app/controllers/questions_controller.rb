class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].end_with?("?")
      @questions = "Silly question, get dressed and go to work!"
    elsif params[:question] === "I am going to work"
      @questions = "Great!"
    else
      @questions = "I don't care, get dressed and go to work!"
    end
    return @questions
  end
end
