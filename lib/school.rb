# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student,grade)
    if(!@roster.has_key?(grade))
      @roster[grade] =[]
    end
    @roster[grade] << student
  end

  def grade(n)
    @roster[n]

  end

  def sort
    temp= {}
   @roster.each do |k,v|
      temp[k] = v.sort
    end
    temp

  end


end
