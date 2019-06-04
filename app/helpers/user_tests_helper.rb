module UserTestsHelper
  def find_answer(question, usertest)
    @answer = UserAnswer.find_by(question_id: question, user_test_id: usertest)
  end

  def find_correct question
    @correct = Answer.find_by(question_id: question, correct: true)
  end
end
