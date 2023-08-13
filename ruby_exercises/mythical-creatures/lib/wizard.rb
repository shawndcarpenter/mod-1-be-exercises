class Wizard
    attr_reader :name, :bearded, :rested, :spells_cast
    def initialize(name, bearded: true, rested: true)
        @name = name
        @bearded = bearded
        @rested = true
        @spells_cast = 0
    end

    def bearded?
        bearded
    end

    def incantation(words)
        'sudo ' + words
    end

    def rested?
        rested
    end

    def cast
        @spells_cast += 1
        if @spells_cast == 3
            @rested = false
        end
        "MAGIC MISSILE!"

    end
end