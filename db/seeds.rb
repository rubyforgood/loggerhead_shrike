# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rails.logger.info 'Adding a Whole bunch of Observations'

Observation.all.each(&:delete)

Observation.create(sighted_at: DateTime.current, location: 'Burke Lake Park, Fairfax Station, VA', latitude: 38, longitude: -77, num_bands: 1)
Observation.create(sighted_at: DateTime.current, location: 'someplace cool', latitude: 37, longitude: -78, num_bands: 1)
