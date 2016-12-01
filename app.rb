require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
# # require('./lib/phone')
# # require('./lib/address')
#
get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/new') do
  erb(:contact_form)
end

post('/contacts') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  Contact.new("Hal", "Fairless").save()
  @contacts = Contact.all()
  erb(:contacts)
end
