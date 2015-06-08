class CoachingController < ApplicationController
  def answer
    @your_question = params[:query]
    @your_answer = coach_answer_enhanced(@your_question)
  end

  def ask
  end
end

def coach_answer(your_message)
  if your_message.downcase == "i am going to work right now!"
    'Amazing!'
  elsif your_message.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if answer != ""
    if your_message.upcase == your_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  else
    ""
  end
end


