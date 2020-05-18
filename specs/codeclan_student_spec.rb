require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../codeclan_student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def setup

    @student = Student.new("Ahmed", "E40")

  end

  def test_get_student_name
    assert_equal("Ahmed", @student.get_student_name())
  end

  def test_get_Student_cohort
    assert_equal("E40", @student.get_student_cohort())
  end

  def test_can_set_student_name
    @student.set_student_name("other_ahmed")
    assert_equal("other_ahmed", @student.get_student_name())
  end

  def test_can_set_cohort
    @student.set_student_cohort("E37")
    assert_equal("E37", @student.get_student_cohort())
  end

  def test_can_student_speak
    speak_result = @student.can_student_speak("Heyo everyone :waves:")
    assert_equal("Heyo everyone :waves:", speak_result)
  end

  def test_can_say_favourite_language
    language_result = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", language_result)
  end

end
