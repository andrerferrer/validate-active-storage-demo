puts "Clean the DB"
Restaurant.destroy_all


puts "Create a Restaurant"
mc_donalds = Restaurant.new name: "McDonalds", address: "Gloria"


puts "Attach some photos"

image_file = File.open('db/pictures/mcdonalds.jpg')

mc_donalds.photo.attach(io: image_file, filename: 'mcdonalds.jpg', content_type: 'image/jpg')

mc_donalds.save!

puts "Done!"
puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'
}
