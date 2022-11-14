class AnswersController < ApplicationController
  def answer
    @answer = ''
    its_a_question = params[:answer].include?('?')
    (if its_a_question && params[:answer] == params[:answer].upcase
       @answer = 'I can feel your motivation! Silly question, get dressed and go to work!'
     elsif params[:answer] == 'I AM GOING TO WORK RIGHT NOW!'
       ''
     elsif params[:answer] == params[:answer].upcase
       @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
     elsif its_a_question
       @answer = 'Silly question, get dressed and go to work!'
     elsif params[:answer] == 'I am going to work right now!'
       ''
     else
       @answer = "I don't care, get dressed and go to work!"
     end)
  end
end
