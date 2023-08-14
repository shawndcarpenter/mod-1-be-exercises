class Ogre
    attr_reader :name, :home, :encounter_counter, :swings
    attr_accessor :swings
    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter_counter += 1
        if human.notices_ogre?
            swing_at(human)
        end
    end

    def swing_at(human)
        @swings += 1
    end
    
    def apologize(human)
        human.encounter_counter = 0
    end
end

class Human
    attr_accessor :encounter_counter
    attr_reader :name
    def initialize
        @name = 'Jane'
        @encounter_counter = 0
        @notices_ogre = false
        @knocked_out = false
    end

    def notices_ogre?
        if @encounter_counter % 3 == 0
            @notices_ogre == false
        elsif @encounter_counter % 3 != 0
            @notices_ogre == true
        end
    end

    def knocked_out?
        if encounter_counter % 6 == 0 && encounter_counter != 0
            true
        else
            false
        end
    end
end