users = User.create(
  [
    {email: 'floris@email.com', password: '123456', username: 'floris09', admin: true},
    {email: 'henk@email.com', password: '123456', username: 'henk09', admin: false}
  ]
)

profiles = Profile.create(
  [
    {first_name: 'Floris', last_name: 'Meininger', image_url: 'https://i.vimeocdn.com/portrait/9837954_640x640', user: users.first},
    {first_name: 'Henk', last_name: 'Jantjes', image_url: 'https://pbs.twimg.com/profile_images/874959199431688196/uNQmfklk_400x400.jpg', user: users.last}
  ]
)

surfboards = Category.create(name: 'Surfboards')
fins = Category.create(name: 'Fins')

products = Product.create(
  [
    {name: 'Al Merrick', image_url: 'https://screenshotlayer.com/images/assets/placeholder.png', description: 'Perfect for charging bigger waves. Mint condition!', price: 3500000, state: 'very good', size: '6\'4"', color: 'white', brand: 'Channel Islands', volume: 30.2, user: users.first, category: surfboards },
    {name: 'Hypto 5\'6', image_url: 'https://screenshotlayer.com/images/assets/placeholder.png', description: 'Selling because too small for me, come check it out.', price: 5000000 , state: 'good', size: '5\'6"', color: 'white', brand: 'Hayden Shapes', volume: 29.5, user: users.last, category: surfboards },
    {name: 'Channel Islands thruster fins', image_url: 'https://screenshotlayer.com/images/assets/placeholder.png', description: 'Fins are used, but still work well.', price: 500000  , state: 'used', size: 'M', color: 'black', brand: 'Channel Islands' , user: users.first, category: fins },
    {name: 'IndoFins', image_url: 'https://screenshotlayer.com/images/assets/placeholder.png', description: 'good condition', price: 300000, state: 'good', size: 'S', color: 'white', brand: 'Indo Fins', user: users.last, category: fins }
  ]
)

favorites = Favorite.create(
  [
    {user: users.first, product: products.first},
    {user: users.last, product: products.last}
  ]
)
