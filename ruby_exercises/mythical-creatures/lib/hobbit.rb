class Hobbit
    attr_reader :name, :disposition, :age, :has_ring, :is_short
    def initialize(name, disposition = 'homebody', is_short = true)
        @name = name
        @disposition = disposition
        @age = 0
        @has_ring = assign_ring_on_creation
        @is_short = is_short
    end

    def assign_ring_on_creation
        return true if self.name.downcase == "frodo"
        false
    end

    def is_short?
        @is_short == true
    end


    def adult?
        @age > 32
    end

    def old?
        @age > 100
    end


    def has_ring?
        has_ring
    end

    def celebrate_birthday
        @age += 1
    end
    
end