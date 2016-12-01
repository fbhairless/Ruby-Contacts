require('rspec')
require('contact')
require('phone')
require('address')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot',:birth_month => 07})
      test_contact.save()
      expect(test_contact.name()).to(eq('Audrie Talbot'))
    end
  end

  describe('#birth_month') do
    it('returns the birth month of a contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot', :birth_month => 07})
      test_contact.save()
      expect(test_contact.birth_month()).to(eq(07))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a contact by its name') do
      test_contact = Contact.new({:name => 'Audrie Talbot', :birth_month => 07})
      test_contact.save()
      test_contact_2 = Contact.new({:name => 'Jeanette Fairless', :birth_month => 06})
      test_contact_2.save()
      expect(Contact.find(test_contact.name())).to(eq(test_contact))
    end
  end

  describe('#add_phone') do
    it('adds a new phone to a contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot', :birth_month => 07})
      test_phone = Phone.new({:type => 'cell', :number => '111111111'})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones()).to(eq([test_phone]))
    end
  end

  describe('#add_address') do
    it('adds a new address to a contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot', :birth_month => 07})
      test_address = Address.new({:address_line => '11640 NW Stone Mountain Lane', :city => 'Portland', :state => 'OR', :zip => '97229'})
      test_contact.add_address(test_address)
      expect(test_contact.addresses()).to(eq([test_address]))
    end
  end
end
