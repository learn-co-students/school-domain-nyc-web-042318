require 'pry'

class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  
  def add_student(name, grade)
    result = @roster.key?(grade)
    if result == true
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |k,v|
      @roster[k] = v.sort
    end
  end
  
end