class Item
    attr_accessor :title, :description
    def self.valid_date?(date_string)
        date_arr = date_string.split("-")
        return false if date_arr[0].length != 4

        date_arr.map! { |date| date.to_i }
        month = date_arr[1]
        day = date_arr[2]
        (month < 1 || month > 12) || (day < 1 || day > 31) ? false : true
    end

    def initialize(title, deadline, description)
        if !Item.valid_date?(deadline)
            raise ArgumentError.new("Invalid Date.")
        else
            @title = title
            @deadline = deadline
            @description = description
        end
    end

    def deadline
        @deadline
    end
    
    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline 
        else
            raise ArgumentError.new("Invalid Date.")
        else
    end
end
"valid_date?"
p Item.valid_date?('2019-10-25') # true
p Item.valid_date?('1912-06-23') # true
p Item.valid_date?('2018-13-20') # false
p Item.valid_date?('2018-12-32') # false
p Item.valid_date?('10-25-2019') # false

Item.new('Fix login page', '2019-10-25', 'The page loads too slow.')
Item.new(
    'Buy Cheese',
    '2019-10-21',
    'We require American, Swiss, Feta, and Mozzarella cheese for the Happy hour!'
)
# Item.new(
#     'Fix checkout page',
#     '10-25-2019',
#     'The font is too small.'
# ) # raises error due to invalid date
