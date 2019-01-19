# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file contains all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Product.create([
  {
    title: 'Apple MacBook Pro with Touch Bar 15.4"',
    description: "The new MacBook Pro has 6-core Intel Core processors for up to 
    70 percent faster compute speeds.1 A brilliant and colourful Retina display 
    featuring True Tone technology for a more true-to-life viewing experience. 
    And the versatile Touch Bar for more ways to be productive. It’s Apple’s most 
    powerful notebook. Pushed even further.",
    price: 3,699.99,
    shipping: 20.99,
    inventory_count: 374,
    sold_count: 123,
  },
  {
    title: 'Beats by Dr. Dre Studio3 Skyline On-Ear Noise 
    Cancelling Bluetooth Headphones - Midnight Black',
    description: 'Enjoy a premium listening experience and complete wireless 
    freedom with the Beats Studio 3 over-ear headphones. 
    Pure Adaptive Noise Canceling (Pure ANC) actively blocks unwanted external 
    noise, while real-time audio calibration preserves the clarity, 
    range, and emotion in your favourite music.',
    price: 299.99,
    shipping: 10.99,
    inventory_count: 54,
    sold_count: 11,
  },
  {
    title: 'Logitech G900 Chaos Spectrum 
    Wireless/USB Optical Gaming Mouse (910-004558)',
    description: "Latency can make all the difference when you're in a 
    high-pressure game situation. The G900 Chaos Spectrum features a 
    1 millisecond report rate and optimized 2.4GHz wireless c
    onnection to give you the edge in eSports competition.",
    price: 99.99,
    shipping: 10.99,
    inventory_count: 34,
    sold_count: 19,
  },


  {
    title: 'Logitech G900 Chaos Spectrum 
    Wireless/USB Optical Gaming Mouse (910-004558)',
    description: "Latency can make all the difference when you're in a 
    high-pressure game situation. The G900 Chaos Spectrum features a 
    1 millisecond report rate and optimized 2.4GHz wireless c
    onnection to give you the edge in eSports competition.",
    price: 99.99,
    shipping: 10.99,
    inventory_count: 34,
    sold_count: 19,
  },

  {
    title: 'Nintendo Switch Console with Neon Red/Blue Joy-Con',
    description: "Do what you never thought possible with Nintendo Switch. 
    Go from single- and multi-player thrills at home, to playing 
    the same title wherever and whenever you want. Simply attach the Joy-Con controllers to the bright,
     hi-def display and 
    you're all set. Or detach the controllers and 
    give one to a friend for some on-the-go, local multiplayer action.",
    price: 379.99,
    shipping: 10.99,
    inventory_count: 0,
    sold_count: 235,
  },
])
