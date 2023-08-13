class Dragon
    attr_reader :name, :rider, :color, :meals, :hungry
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @meals = 0
        @hungry = true
    end

    def hungry?
        hungry
    end

    def eat
        @meals += 1
        if @meals == 3
            @hungry = false
        end
    end
end