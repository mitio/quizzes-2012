class QuestionsController < ApplicationController
  before_filter :load_quiz

  def show
    @question = @quiz.questions.find(params[:id])
  end

  private

  def load_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
