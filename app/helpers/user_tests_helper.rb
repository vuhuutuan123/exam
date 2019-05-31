module UserTestsHelper
  def find_answer question
    @answer = UserAnswer.find_by(question_id: question)
  end
end
