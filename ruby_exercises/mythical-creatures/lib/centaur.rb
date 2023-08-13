class Centaur
    attr_reader :name, :breed, :cranky, :standing, :actions_taken, :laying
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @laying = false
        @actions_taken = 0
    end
    def shoot
       if @actions_taken == 3 || @laying == true
        'NO!'
       elsif @actions_taken < 3
        @actions_taken += 1
        'Twang!!!'
       end
    end

    def sleep
        if @standing == true
            'NO!'
        elsif @laying == true
            @actions_taken = 0
        end
    end

    def drink_potion
        if @cranky == false
            @actions_taken = 3
            '*vomits*'
        elsif @cranky == true
            if @laying == true
                'NO!'
            elsif @standing == true
                @actions_taken = 0
            end
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @laying = false
        @standing = true
    end

    def run
        if @laying == true
            'NO!'
        elsif
        @actions_taken += 1
        'Clop clop clop clop!'
        end
    end

    def cranky?
        if @actions_taken < 3
            @cranky = false
        elsif @actions_taken == 3 
            @cranky = true
        end
    end

    # if @actions_taken == 3 
    #   @cranky = true
    # end

    def standing?
        @standing
    end
    def laying?
        @laying
    end
end