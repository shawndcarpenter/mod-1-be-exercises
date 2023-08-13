class Pirate
    attr_reader :name, :job, :cursed, :heinous_acts, :has_booty, :booty
    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @cursed = false
        @heinous_acts = 0
        @has_booty = false
        @booty = 0
    end

    def cursed?
        cursed
    end
    def commit_heinous_act
        @heinous_acts += 1
        if @heinous_acts >= 3
            @cursed = true
        end
    end

    def has_booty?
        has_booty
    end
    def rob_ship
        @booty += 100
        if @booty > 0
            @has_booty = true
        end
    end
        
end