require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

  def setup
    @codeclan_student = CodeclanStudent.new("Kevin", "G17")
  end

  def test_student_name
    assert_equal('Kevin', @codeclan_student.student_name)
  end

  def test_student_cohort
    assert_equal('G17', @codeclan_student.student_cohort)
  end

  # TEST SETTERS

  def test_set_student_name
    @codeclan_student.student_name = 'John'
    assert_equal('John', @codeclan_student.student_name)
  end

  def test_set_student_cohort
    @codeclan_student.student_cohort = "G18"
    assert_equal("G18", @codeclan_student.student_cohort)
  end

  #I CAN TALK TEST
  def test_student_talk
    assert_equal("I can talk", @codeclan_student.talk)
  end

  #FAVOURITE LANGUAGE TEST
  def test_favourite_language
    assert_equal("Ruby", @codeclan_student.language)
  end

end
