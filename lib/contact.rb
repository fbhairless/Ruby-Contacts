class Contact
  @@contacts = []
  @phones = []
  @addresses = []
  attr_reader(:name, :birth_month, :phones, :addresses)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @birth_month = attributes.fetch(:birth_month)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:find) do |name|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.name().eql?(name)
        found_contact = contact
      end
    end
    found_contact
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end
end
