class Cult

    @@all = []
    attr_reader :name, :founding_year, :slogan, :location
    attr_accessor :cult_population
    def initialize(name, founding_year, slogan, location)
        @name = name
        @founding_year = founding_year
        @slogan = slogan
        @location = location
        @@all << self
        @cult_population = 0
    end

    def recruit_follower(follower)
        person = Follower.find_by_name(follower)
        group = self
        BloodOath.new(person, group)

    end

    def self.find_by_name(cult_name)
        @@all.select { |cult| cult.name == cult_name}
    end

    def self.find_by_location(residence)
        @@all.select { |cult| cult.location == residence}
    end

    def self.find_by_founding_year(beginning)
        @@all.select { |fyear| fyear.founding_year == beginning}
    end

    def self.all
        @@all
    end

end