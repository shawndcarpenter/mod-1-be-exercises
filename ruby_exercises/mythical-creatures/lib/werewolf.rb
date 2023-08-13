class Werewolf
    attr_reader :name, :location, :human, :wolf, :hungry, :victims_consumed, :status
    def initialize(name, location = 'London')
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
        @victims_consumed = 0
    end

    def human?
        @human
    end

    def wolf?
        @wolf
    end

    def hungry?
        if @human == true 
            @hungry = false
        elsif 
        @wolf == true && @victims_consumed == 0
            @hungry = true
        elsif @wolf == true && @victims_consumed > 0
            @hungry = false
        end
        # if @wolf = true
        #     @hungry = true
        # elsif @wolf = false
        #     @hungry = false
        # end
    end

    def change!
        @human = !@human
       @wolf = !@wolf 
    #    @hungry = !@hungry
    end

    def consume!(victim)
        if @human == true
            @victims_consumed = 0
        elsif @wolf == true
            @victims_consumed += 1
            @hungry = false
            victim.status = :dead
        end
    end

    def victims_consumed?
        @victims_consumed
    end



end

# class Victim
#     attr_accessor :status

#     def initialize
#       @status = :alive
#     end
#     def kill
#         @status = :dead
#     end
#   end