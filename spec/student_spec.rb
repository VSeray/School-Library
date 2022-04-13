require_relative '../student'

describe Student do
  context 'Testing the Student class' do
    student = Student.new(17, true, 'Kyle')

    it 'has the class of Student' do
      expect(student.instance_of?(Student)) == true
    end

    it 'should have the correct age = 17, name - Kyle and permission - true' do
      expect(student.age).to eq 17
      expect(student.name).to eq 'Kyle'
      expect(student.parent_permission).to eq true
    end
  end
end
