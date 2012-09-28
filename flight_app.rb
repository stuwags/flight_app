require 'stripe'
require 'prawn'
require 'pony'
# require 'hash'

request2 = {}

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

  def initialize(info)
    @info = info
    info[:depart_city]
    @request = info
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

  def print()
  end

  def email()
  end

end


request1 = TravelRequest.new(request)
request1.enter_travel_plan
