# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Pathname.glob(Rails.root.join('db/seeds/*.rb')) do |path|
#  desc "Load the seed data from db/seeds/#{path.basename}."
#  task "db:seed:#{path.basename(".*")}" => :environment do
#    load(path)
#  end
#end

SeedFu.seed
