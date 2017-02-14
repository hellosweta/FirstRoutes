# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create(username: 'long_live_gizmo')
user2 = User.create(username: 'foobar_is_awesome')
user3 = User.create(username: 'foobar_is_okay')


c1 = Contact.create(name: 'Gizmal', email: 'gizmal@gmail.com', user_id: user1.id)
c2 = Contact.create(name: 'Barfoo', email: 'barfoo@gmail.com', user_id: user3.id)
c3 = Contact.create(name: 'Yako', email: 'yako@gmail.com', user_id: user3.id)

cs1 = ContactShare.create!(contact_id: c1.id, user_id: user3.id)
cs2 = ContactShare.create!(contact_id: c2.id, user_id: user1.id)
cs3 = ContactShare.create!(contact_id: c3.id, user_id: user2.id)
