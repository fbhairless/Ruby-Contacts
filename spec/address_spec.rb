require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
  end

  describe('#address_line') do
    it('returns the address line of the Address') do
      test_address = Address.new({:address_line => '846 SW Broadway Drive', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.address_line()).to(eq('846 SW Broadway Drive'))
    end
  end

  describe('#city') do
    it('returns the city of the Address') do
      test_address = Address.new({:address_line => '11640 NW Stone Mountain Lane', :city => 'Portland', :state => 'OR', :zip => '97229' })
      expect(test_address.city()).to(eq('Portland'))
    end
  end

  describe('#state') do
    it('returns the state of the Address') do
      test_address = Address.new({:address_line => '11640 NW Stone Mountain Lane', :city => 'Portland', :state => 'OR', :zip => '97229'})
      expect(test_address.state()).to(eq('OR'))
    end
  end

  describe('#zip') do
    it('returns the zip code of the Address') do
      test_address = Address.new({:address_line => '15130 SW Millikan Way', :city => 'Beaverton', :state => 'OR', :zip => '97003'})
      expect(test_address.zip()).to(eq('97003'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds an address to an array of saved addresses') do
      test_address = Address.new({:address_line => '846 SW Broadway Drive', :city => 'Portland', :state => 'OR', :zip => '97201'})
      test_address.save()
      expect(Address.all()).to(eq([test_address]))
    end
  end
end
