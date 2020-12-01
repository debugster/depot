# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(
  title: 'iPhone 12 Pro Max',
  description:
    "
      <p>
      iPhone 12 Pro Max Black
      </p>
      <p>
      <ul>
      <li><b>Storage:</b> 256 GB</li>
      <li><b>Color:</b> Black</li>
      <li><b>Warranty:</b> 1 year</li>
      </ul>
      </p>
    ",
  image_url: 'iPhone-12-Pro-Max-Black.png',
  price: 1199.00
)
Product.create!(
  title: 'Pixel 5',
  description:
    "
      <p>
      Google Pixel 5 Black
      </p>
      <p>
      <ul>
      <li><b>Storage:</b> 128 GB</li>
      <li><b>Color:</b> Black</li>
      <li><b>Warranty:</b> 2 years</li>
      </ul>
      </p>
    ",
  image_url: 'Pixel-5-Black.jpg',
  price: 999.00
)
Product.create!(
  title: 'OnePlus 8 Pro',
  description:
    "
      <p>
      OnePlus 8 Pro Blue
      </p>
      <p>
      <ul>
      <li><b>Storage:</b> 512 GB</li>
      <li><b>Color:</b> Blue</li>
      <li><b>Warranty:</b> 1 year</li>
      </ul>
      </p>
    ",
  image_url: 'Oneplus-8-Pro-Blue.jpg',
  price: 899.00
)
