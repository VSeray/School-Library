require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name, parent_permission: true)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
