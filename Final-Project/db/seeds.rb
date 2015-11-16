# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(
  name: '1',
  resolution: '1920 x 1080',
  fps: '25',
  filename: '1' # No need for dots nor extensions here
)

Video.create(
  name: '2',
  resolution: '1920 x 1080',
  fps: '30',
  filename: '2' # No need for dots nor extensions here
)

Video.create(
  name: '3',
  resolution: '1920 x 1080',
  fps: '25',
  filename: '3' # No need for dots nor extensions here
)
