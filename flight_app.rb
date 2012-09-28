require 'stripe'
require 'prawn'
require 'pony'
# require 'hash'

request = {
  :itinerary => {
    :leave => {
      :depart_data => {
        :airport => "DTW",
        :date => "9/26/2012",
        :time => "1800"
      },
      :arrive_data => {
        :airport => "MIA",
        :date => "9/26/2012",
        :time => "2100"
      }
    },
    :return => {
      :depart_data => {
        :airport => "MIA",
        :date => "9/28/2012",
        :time => "1800"
      },
      :arrive_data => {
        :airport => "DTW",
        :date => "9/28/2012",
        :time => "2100"
      }
    }
  },
  :po => {
    :price => 300,
    :time => Time.now
  },
  :user => {
    :name => "John Bernstein",
    :email => "stuwags@gmail.com",
    :cc => {
      :number => "424242424242",
      :CVC => "424",
      :expiration => "09/2012"
    }
  }
}

class TravelRequest
  include 

  def initialize(request)
    @request = request
  end

  def enter_travel_plan
    puts "Please give flight Departing Airport, date (9/28/2012), and time (2100)"
    @request[:itinerary][:leave][:depart_data][:airport] = gets.chomp 
    @request[:itinerary][:leave][:depart_data][:date] = gets.chomp
    @request[:itinerary][:leave][:depart_data][:time] = gets.chomp

    puts "Please give your flight Arriving Airport, date (9/28/2012), and time (2100)"
    @request[:itinerary][:leave][:arrive_data][:airport] = gets.chomp
    @request[:itinerary][:leave][:arrive_data][:date] = gets.chomp
    @request[:itinerary][:leave][:arrive_data][:time] = gets.chomp

    puts "Please give your return flight depart date and time"
    @request[:itinerary][:return][:depart_data][:airport] = @request[:itinerary][:leave][:arrive_data][:airport]
    @request[:itinerary][:return][:depart_data][:date] = gets.chomp
    @request[:itinerary][:return][:depart_data][:time] = gets.chomp

    puts "Please give your return flight arrive date and time"
    @request[:itinerary][:return][:arrive_data][:airport] = @request[:itinerary][:leave][:depart_data][:airport]
    @request[:itinerary][:return][:arrive_data][:date] = gets.chomp
    @request[:itinerary][:return][:arrive_data][:time] = gets.chomp

  end

# Prawn > Document

# module Prawn
#   class Document
#     def generate
      
#     end
#   end
# end

  def print
    Prawn::Document.generate(@request[:user][:name] + ' invoice.pdf') do |pdf| 
    pdf.text("Congratulations on your purchase!" + "\n" + "Your price was " + @request[:po][:price].to_s) 
end
  end

  def email()
  end

  def charge
    Stripe.api_key = "vtUQeOtUnYr7PGCLQ96Ul4zqpDUO4sOE"
    Stripe::Charge.create(
    :amount => (@request[:po][:price]*100),
    :currency => "usd",
    :card => "tok_jOq0M8vJprCUUU", # obtained with Stripe.js
    :description => "Charge for test@example.com"
  )
  end
end


request1 = TravelRequest.new(request)
request1.print
