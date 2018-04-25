
class School
    
    attr_accessor :name, :roster
    
    def initialize(roster)
        @roster = {}
    end
    
    def add_student(name, grade)
        
        @name = [name]
        @grade = grade
        #if the grade is the same, add a name to that grade
        @roster[grade] ||= []
        @roster[grade] << name
    
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        sorted_students = {}
        @roster.each do |grade, students|
            sorted_students[grade] = students.sort
        end
    sorted_students
    end
end
