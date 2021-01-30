## Goal
This is an app to teach how to attach photos to a model in Rails using `active_storage` from a local file.

This demo was created from [this one](https://github.com/andrerferrer/basic-photo-demo).

[Check my other demos](https://github.com/andrerferrer/dedemos/).

## How to
### 1. Add the images to a [local folder in `db`](db/pictures)
### 2. Handle these images in the [seeds](db/seeds.rb)
```ruby
image_file = File.open('db/pictures/mcdonalds.jpg')

Restaurant.first.photo.attach(io: image_file, filename: 'mcdonalds.jpg', content_type: 'image/jpg')
```

You can check this picture in the `Restaurants#Show`.

Good luck, have fun!
