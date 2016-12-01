class Address
  @@addresses = []
  attr_reader(:address_line, :city, :state, :zip)

  define_method(:initialize) do |attributes|
    @address_line = attributes.fetch(:address_line)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end

  define_singleton_method(:all) do
    @@addresses
  end

  define_method(:save) do
    @@addresses.push(self)
  end
end
