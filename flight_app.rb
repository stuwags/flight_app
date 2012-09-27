require 'stripe'
require 'prawn'
require 'pony'

class TravelRequest

  def initialize(request)
    @request = request

  end

  def enter_travel_plan
    @itinerary[:dest] = gets.chomp
    gets.chomp
  end


  def print()
  end

  def email()
  end

  def give_me_the_request()
    return @request

    tmp = AnotherClass.new

    tmp.some_method(@request)
  end

  def self.hello()
  end

end

request[itinerary][departing_flight][flight_d]

request = {
  :itinerary => {
    :leave => {
      :depart_data => {
        :location => {
          :city => "Detroit",
          :state => "Michigan",
          :airport => "DTW"
        }
        :schedule => {
          :date => "9/26/2012",
          :time => "1800"
        }
      }
      :arrive_data => {
        :location => {
          :city => "Miami",
          :state => "Florida",
          :airport => "MIA"
        }
        :schedule => {
          :date => "9/26/2012",
          :time => "2100"
        }
      }
    }
    :return => {
      :depart_data => {
        :location => {
          :city => "Miami",
          :state => "Florida",
          :airport => "MIA"
        }
        :schedule => {
          :date => "9/28/2012",
          :time => "1800"
        }
      }
      :arrive_data => {
        :location => {
          :city => "Detroit",
          :state => "Michigan",
          :airport => "DTW"
        }
        :schedule => {
          :date => "9/28/2012",
          :time => "2100"
        }
      }
    }
  }
  :po => {
    :price => 300,
    :time => time.current
  }
  :user => {
    :name => {
      :first => "John",
      :last => "Bernstein"
    }
    :email => "stuwags@gmail.com"
    :cc => {
      :number => "424242424242",
      :CVC => "424",
      :expiration => "09/2012"
    }
  }
}

travel_info = TravelInfo.new(request)
travel_info2 = TravelInfo.new(request)
travel_info3 = TravelInfo.new(request)

request[:itinerary][:dest]
request[po][:price]
request[confirmation][:paid] (true/false)









TravelInfo.hello()


Dir.pwd()


class Dir
  def self.pwd()
    @hello = "lasjdf"
  end
end





