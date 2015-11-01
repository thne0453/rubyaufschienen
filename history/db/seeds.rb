# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cancellor.create(:first_name => 'Konrad', :last_name => 'Adenauer', :birthday => '05.01.1876' )
Cancellor.create(:first_name => 'Ludwig', :last_name => 'Erhard', :birthday => '04.02.1897' )
Cancellor.create(:first_name => 'Kurt Georg', :last_name => 'Kiesinger', :birthday => '06.04.1904')
