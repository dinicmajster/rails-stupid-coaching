class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer]
    if @input.downcase == 'i am going to work'
      @response = 'Great!'
    elsif @input.include?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
