require('rspec')
require('phone')

describe(Phone) do
  before() do
    Phone.clear()
  end

  describe('#type') do
    it('returns the type of the phone') do
      test_phone = Phone.new({:type => 'cell', :number => '5033279184'})
      expect(test_phone.type()).to(eq('cell'))
    end
  end

  describe('#number') do
    it('returns the type of the number') do
      test_number = Phone.new({:type => 'cell', :number => '9999999999'})
      expect(test_number.number()).to(eq('9999999999'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a phone to the array of saved phones') do
      test_phone = Phone.new({:type => 'home', :number => '1111111111'})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end
end
