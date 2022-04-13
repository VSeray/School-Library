require_relative '../person'
require_relative '../book'

describe Person do
    context 'Test class Person' do
        before(:each) do
            @person = Person.new(55, 'Joe Cole', parent_permission: false)
            @book = Book.new('The Great Albions', 'Random Dude')
            @newBook = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
        end

        describe '#new' do
            it 'takes three parameters and returns a Person object' do
                expect(@person).to be_an_instance_of Person
            end
           end

           it 'Test person instance if it has the name, age, parent_permission attributes' do
            expect(@person).to have_attributes(name: 'Joe Cole') 
            expect(@person).to have_attributes(age: 55) 
            # expect(@person.parent_permission?).to eql(false)
         end 

         it 'should have a name' do
            expect(@person.name).to eql('Joe Cole')
           end

         it 'should have a rental' do
            expect(@person.rental).to be_an_instance_of Array
           end

         it 'Test add_rental method, it lenght should equal 2' do
            @person.add_rental(@book, '01/01/2020')
            @person.add_rental(@newBook, '01/05/2020')
            expect(@person.rental.length).to eql(2)
         end

         it 'Test can_use_services? method, it should return true if age is greater than 18 or parent_permission is true' do
            expect(@person.can_use_services?).to eql(true)
         end

         it 'Test correct_name method, it should return the name' do
            expect(@person.correct_name).to eql('Joe Cole')
         end

         it 'Test of_age? method, it should return true if age is greater than 18' do
            expect(Person.send(:of_age?)).to eql(true)
         end
    end
end