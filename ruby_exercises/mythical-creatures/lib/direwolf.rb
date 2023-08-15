class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect, :location, :hunts_white_walkers
    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end
    
    def protects(stark)
        if @home == stark.location
            @starks_to_protect << stark if @starks_to_protect.count < 2
            stark.mark_safe
        end
    end

    def hunts_white_walkers?
        if @starks_to_protect.count != 0
            @hunts_white_walkers == false
        else
            @hunts_white_walkers == true
        end
    end

    def leaves(stark)
        if @starks_to_protect.count != 0
            @starks_to_protect.clear
            stark.mark_unsafe
            return stark if stark.safe == false
        end
    end
end

class Stark
    attr_reader :name, :location, :safe, :house_words
    attr_accessor :name, :location
    def initialize(name = 'Arya', location = 'Winterfell', house_words = 'Winter is Coming')
        @name = name
        @location = location
        @safe = false
        @house_words = house_words
    end

    def mark_safe
        @safe = true
    end

    def mark_unsafe
        @safe = false
    end

    def safe?
        @safe
    end

end

