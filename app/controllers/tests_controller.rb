class TestsController < ApplicationController
  
  def show
  
  end
  
  def index
    
  end

  def new
    @test = Test.new
    @questions = Question.all
  end

  def create 
    @test = Test.new(params.require(:test))
    if @test.save
      flash[:notice] = "Test is completed"
      redirect_to @test
    else 
      render 'new'
    end
  end 

  def destroy
    @test.destroy
    redirect_to @test_path

  end

end
