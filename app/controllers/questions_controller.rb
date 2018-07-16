class QuestionsController < ApplicationController
  before_action :questionnaire


  def index
    # @questionnaires = Questionaire.all
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  private

  def questionnaire
    @questionnaire = Questionnaire.find_by(name: "Wedding")
  end

  def question_params
    params.require(:question).permit(:name, :q_body)
  end

end
