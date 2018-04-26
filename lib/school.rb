# code here!
require 'pry'
class School

  attr_accessor :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster.keys.include?(grade)
      self.roster[grade] << name
    else
    self.roster[grade] = []
    self.roster[grade] << name
    end
  end

  def grade(grade)
    self.roster.each do |grades, students|
        if grades === grade
          return students
        end
    end
  end


  # def sort
  #   self.roster.sort.to_h
  #   self.roster.collect do |grade, students|
  #     students.sort
  #   end
  # end


  def sort
    self.roster.each do |grade, student_array|
      self.roster[grade] = student_array.sort
    end
  end
end

# binding.pry
