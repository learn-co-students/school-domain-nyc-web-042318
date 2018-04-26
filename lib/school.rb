require "pry"

class School

attr_accessor :school, :student, :grade, :roster

def initialize(roster)
  @roster = {}
end

def add_student(student, grade)
  if @roster.key?(grade) == false
    @roster[grade] = []
    @roster[grade] << student
  else
    @roster[grade] << student
  end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, student_array|
  @roster[grade] = student_array.sort
  end
end
end
