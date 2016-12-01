require('rspec')
require('contact')
# require('phone')
# require('address')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new("Hal", "Fairless")
      test_contact.save()
      expect(test_contact.first_name()).to(eq('Hal'))
    end
  end

  describe('#last_name') do
    it('returns the last name of the contact') do
      test_contact = Contact.new("Hal", "Fairless")
      test_contact.save()
      expect(test_contact.last_name()).to(eq('Fairless'))
    end
  end


  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

nd
