puts "Clean the DB"
Restaurant.destroy_all


puts "Create some Restaurants"
Restaurant.create! name: "Amareleen", neighborhood: "Gloria"
Restaurant.create! name: "Verdeen", neighborhood: "Gloria"
Restaurant.create! name: "McDonalds", neighborhood: "Gloria"

puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Attach some photos"
require "open-uri"

amareleen = URI.open('https://1.kekantoimg.com/Psupn1iCO1zk7YxlybKy9v8Sa1s=/400x300/s3.amazonaws.com/kekanto_pics/pics/705/264705.jpg')
mc_donalds = URI.open('https://www.wikirio.com.br/images/thumb/d/dc/McDonald%27s_-_Catete.jpg/300px-McDonald%27s_-_Catete.jpg')

Restaurant.first.photo.attach(io: amareleen, filename: 'amareleen.jpg', content_type: 'image/jpg')
Restaurant.last.photo.attach(io: mc_donalds, filename: 'amareleen.jpg', content_type: 'image/jpg')

puts "Done!"
