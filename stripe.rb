require 'stripe'


  def charge
  Stripe.api_key = "vtUQeOtUnYr7PGCLQ96Ul4zqpDUO4sOE"
  Stripe::Charge.create(
  :amount => 1700,
  :currency => "usd",
  :card => "tok_jOq0M8vJprCUUU", # obtained with Stripe.js
  :description => "Charge for test@example.com"
)
  end

  charge

