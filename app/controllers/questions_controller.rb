class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all 
  end

  def calculateScore
    @score = Question.question_score
    @score += Choice.choice_score

    choices = Choice.where(id: ids)
    choices.sum(:choice_score)
  
  end
  
  def create 
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Test is completed"
      redirect_to @test
    else 
      render 'new'
    end
  end 


end
