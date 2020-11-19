# code here!
require 'pry'
class School
        attr_accessor :name, :roster
        
        def initialize(name)
            @name = name
            @roster = {}
        end

        def add_student(student,grade)
            @roster[grade] ||= []
            @roster[grade] << student
            @roster
        end
        
        def grade(grade)
            @roster[grade]
        end
        binding.pry
        def sort
            @roster.sort.each do |key,value|
                @roster[key] = @roster[key].sort
            end
            @roster
        end
end


wharton = School.new("Wharton")