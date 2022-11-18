class Passenger

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name
        @name
    end

    def has_flight?(flight_number_str)
        @flight_numbers.any? { |flight| flight.upcase == flight_number_str.upcase }
    end

    def add_flight(flight_number_str)
        if !has_flight?(flight_number_str)
            @flight_numbers << flight_number_str.upcase
        end
    end
end