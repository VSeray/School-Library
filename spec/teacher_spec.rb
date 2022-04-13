require_relative '../teacher'

describe Teacher do
  context 'Testing the Teacher class' do
    teacher = Teacher.new(37, 'Geography', 'teacher1')

    it 'has the class of Teacher' do
      expect(teacher.instance_of?(Teacher)) == true
    end

    it 'should have the correct age - 37, name - teacher1, and specialization - geography' do
      expect(teacher.age).to eq 37
      expect(teacher.name).to eq 'teacher1'
      expect(teacher.specialization).to eq 'Geography'
    end

    it 'should be able to use services' do
      expect(teacher.can_use_services?).to eq true
    end
  end
end
