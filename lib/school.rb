# code here!

class School

  attr_reader :grade_levels, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def grade_levels=(level)
    @grade_level = level
    @roster[@grade_level] = []
  end

  def add_student(student_name, level)
    @student_name = student_name
    @grade_level = level
    if @roster[@grade_level]
        @roster[@grade_level] << student_name
    else
      @roster[@grade_level] = []
      @roster[@grade_level] << student_name
    end
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.map do |grade, student_array|
      @roster[grade] = student_array.sort
    end
    @roster
  end

end
