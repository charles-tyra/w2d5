class Flight

    def initialize(flight_number_str, capacity)
        @flight_number = flight_number_str
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        @passengers << passenger if passenger.has_flight?(@flight_number) && !full?
    end

    def list_passengers
        list = []
        @passengers.each do |pass|
            list << pass.name
        end
        list
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end