# code here!
require 'pry'

class School
  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade

    if roster[grade] == nil
      roster[grade] = []
    end ##another way to write this statement is
    #roster[grade] ||= []
    #which checks if roster[grade] is falsey and if it is, sets it equal to empty array

    roster[grade] << name
  end

  def grade(number)
    roster[number]
  end

  def sort
    roster.collect do |key, value|
      roster[key] = value.sort
    end
    roster.sort.to_h
  end


end
