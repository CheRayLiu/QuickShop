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
    title: 'USB-C to USB Adapter',
    description: '* Turn any USB-C port into a USB 3.0 port
* Connect flash drives, keyboards, or other peripherals to the new Macbook Pro and other USB-C devices
* Compatible with tablets and smartphones with a USB Type-C connector including the Samsung Galaxy S9/S9 Plus/S8, Huawei P20/P20 Pro
* Hi-speed USB C Male to Standard Type A USB 3.0 Data sync, Video, Audio 4-in-1 cable. The maximum data transfer rate up to 5GBit/s, USB3.0 standard
* Reversible Design: Smaller, smarter and more convenient! Low-profile connector with a reversible design simplifies the connection.
* Plug and unplug easily without checking for the connector orientation.
* 90 day warranty.',
    price: 3.50,
    shipping: 0.99,
    inventory_count: 34,
    sold_count: 30,
  },
  {
    title: 'Apple',
    description: 'Good',
    price: 2.50,
    shipping: 0.99,
    inventory_count: 20,
    sold_count: 30,
  },
  {
    title: 'banana',
    description: 'Good',
    price: 2.50,
    shipping: 0.99,
    inventory_count: 0,
    sold_count: 30,
  },
])
