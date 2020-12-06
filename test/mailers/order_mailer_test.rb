require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "NUX Online Shop Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["nayeem.mahmood@bdipo.com"], mail.from
    assert_match /1 x OnePlus/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "NUX Online Shop Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["nayeem.mahmood@bdipo.com"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>OnePlus<\/td>/, mail.body.encoded
  end

end
