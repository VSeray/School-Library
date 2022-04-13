require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  context 'When adding a new rentals' do
    it 'Rental should have attributes' do
      date = '2022-04-11'
      book = Book.new('Harry Potter', 'Author')
      person = Person.new(54, 'J.K Rowlings')

      rental = Rental.new(date, person, book)
      expect(rental).to be_an_instance_of(Rental)
      expect(rental.person.name).to eql('J.K Rowlings')
      expect(rental.person.age).to eql(54)
      expect(rental.book.title).to eql('Harry Potter')
      expect(rental.book.author).to eql('Author')
    end

    it 'The add_rental method returns a rental and adds its to the book' do
      book = Book.new('Title', 'Author')
      person = Person.new(20, 'Vana')

      rental = person.add_rental('2022-02-14', book)

      expect(person.rentals).to eq [rental]
    end
  end
end
