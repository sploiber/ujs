# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.create(:name => "Hugh", :admin => true)
Person.create(:name => "Ken", :admin => false)
Person.create(:name => "Calvin", :admin => false)
Person.create(:name => "Lois", :admin => true)
