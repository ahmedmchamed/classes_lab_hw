class Student

  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @student_cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_student_cohort(cohort)
    @student_cohort = cohort
  end

  def can_student_speak(student_speaking)
    return student_speaking
  end

  def say_favourite_language(language_name)
    return "I love #{language_name}!"
  end

end
