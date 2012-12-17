class QuizzesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @quizzes = current_user.quizzes
  end

  def show
    @quiz = current_user.quizzes.find params[:id]
  end
end
