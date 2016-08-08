class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]

    last_index = @query.length - 1
    if @query[last_index] == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @query == "I am going to work right now!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
