## Goal
<<<<<<< HEAD
<<<<<<< HEAD
This is an app to teach how to validate attached photos to a model in Rails using `active_storage`.

This demo was created from [this one](https://github.com/andrerferrer/seed-from-local-image-demo#goal).
=======
This is an app to teach how to attach photos to a model in Rails using `active_storage`.
>>>>>>> parent of ed95eee... update README
=======
This is an app to teach how to attach photos to a model in Rails using `active_storage` from a local file.

This demo was created from [this one](https://github.com/andrerferrer/basic-photo-demo).
>>>>>>> parent of 9c4dc32... update readme

[Check my other demos](https://github.com/andrerferrer/dedemos/).

## How to
<<<<<<< HEAD
<<<<<<< HEAD
### 1. Add custom validator

=======
### 1. Install active_storage
```
rails active_storage:install
```

### 2. Add attachment to the model
```ruby
  class Restaurant < ApplicationRecord
    has_many :reviews
    has_one_attached :photo
  end
```

### 3. How to seed it?

With `open-uri`

```ruby
require "open-uri"

amareleen = URI.open('https://1.kekantoimg.com/Psupn1iCO1zk7YxlybKy9v8Sa1s=/400x300/s3.amazonaws.com/kekanto_pics/pics/705/264705.jpg')
mc_donalds = URI.open('https://www.wikirio.com.br/images/thumb/d/dc/McDonald%27s_-_Catete.jpg/300px-McDonald%27s_-_Catete.jpg')

Restaurant.first.photo.attach(io: amareleen, filename: 'amareleen.jpg', content_type: 'image/jpg')
Restaurant.last.photo.attach(io: mc_donalds, filename: 'amareleen.jpg', content_type: 'image/jpg')
```
>>>>>>> parent of ed95eee... update README
=======
### 1. Add the images to a [local folder in `db`](db/pictures)
### 2. Handle these images in the [seeds](db/seeds.rb)
```ruby
image_file = File.open('db/pictures/mcdonalds.jpg')

Restaurant.first.photo.attach(io: image_file, filename: 'mcdonalds.jpg', content_type: 'image/jpg')
```

You can check this picture in the `Restaurants#Show`.
>>>>>>> parent of 9c4dc32... update readme

Good luck, have fun!
