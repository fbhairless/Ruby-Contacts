require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
# # require('./lib/phone')
# # require('./lib/address')
#
# get('/') do
#   erb(:index)
# end
#
# get('/contacts') do
#   @contacts = Contact.all()
#   erb(:contacts)
# end
#
# get('/contacts/new') do
#   erb(:contact_form)
# end
#
# post('/contacts') do
#   name = params.fetch('name')
#   birth_month = params.fetch('birth_month')
#   Contact.new({:name => name, :birth_month => birth_month}).save()
#   @contacts = Contact.all()
#   erb(:contacts)
# end
