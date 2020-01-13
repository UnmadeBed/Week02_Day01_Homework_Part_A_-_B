class CodeclanStudent
  attr_accessor :student_name, :student_cohort

  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

  #GETTERS

  def student_name()
    return @student_name
  end

  def student_cohort()
    return @student_cohort
  end

  #SETTERS

  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_student_cohort(new_cohort)
    @student_cohort = new_cohort
  end

  #I CAN TALK

  def talk
    return "I can talk"
  end

  #FAVOURITE LANGUAGE

  def language
    return "Ruby"
  end

end
