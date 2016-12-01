class Contact
  @@contacts = []

  define_method(:initialize) do |first_name, last_name|
    @first_name = first_name
    @last_name = last_name
    @contacts_id = @@contacts.length().+1
  end

  define_method(:contacts_id) do
    @contacts_id
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

end
