class Follower

    attr_reader :name, :age, :life_motto
    attr_accessor :cults
    @@all =[]
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    def cult_join(cult)
        group = Cult.find_by_name(cult)
        person = self
        BloodOath.new(person, group)
    end
    
    def self.of_a_certain_age(year)
        @@all.select { |follower| follower.age == year}
    end

    def self.find_by_name(person_name)
        @@all.select { |list| list.name == person_name}
    end

    def self.all
        @@all
    end



   
end