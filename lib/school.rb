# code here!
require 'pry'
class School

  attr_accessor :roster
  def initialize(roster)
    @roster = {}
  end

  def add_student(name, student_grade)
    if @roster[student_grade]
      @roster[student_grade] << name
    else
      @roster[student_grade] = [name]
    end
  end

  def grade(student_grade)
      @roster[student_grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end

end
