require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "products attributes must not be empty" do
    product = Product.new(title: "iPhone 11 Pro Max",
                          description: "xyz",
                          image_url: "abc.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
        product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "iPhone 11 Pro Max",
                description: "xyz",
                price: 1,
                image_url: image_url)
  end

  test "image url" do
    good = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more fred.png.pdf }

    good.each do |image_url|
      assert new_product(image_url).valid?,
             "#{image_url} shouldn't be invalid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?,
             "#{image_url} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:motorola_razr_v3).title,
                          description: "Hello Moto!",
                          price: 1,
                          image_url: "fred.jpg")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end
