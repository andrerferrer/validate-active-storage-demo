## Goal
This is an app to teach how to attach photos to a model in Rails using `active_storage`.

## How to
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

Good luck, have fun!
