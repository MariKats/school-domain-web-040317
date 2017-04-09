require 'pry'

class School
attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    # if a grade already exists as a key within the roster hash,
    # then @roster[grade] = @roster[grade] and the student
    # will be pushed into the array that is the value of this key.
    # if @roster[grade] is false, nil, or undefined,
    # then @roster[grade] = to an empty array
    @roster[grade]<< student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each {|grade, student|
    sorted_hash[grade] = student.sort}
    sorted_hash
  end
end
