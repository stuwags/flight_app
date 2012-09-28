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