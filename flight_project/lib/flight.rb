class Flight
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        return true if @passengers.length == @capacity
        return false
    end

    def board_passenger(passenger)
        @passengers << passenger if passenger.has_flight?(@flight_number) && !self.full?
    end

    def list_passengers
        # p @passengers
        names = []
        @passengers.each { |passenger| names << passenger.name }
        names
    end
    
    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end

end